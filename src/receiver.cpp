#include <iostream>

#include <cmath>
#include <complex>
#include <cstring>
#include <chrono>

#include <vector>

#include <cstdio>
#include <cstdlib>
#include <getopt.h>
#include <signal.h>


//
//  Definition des modules permettant d'utiliser le module Radio (SdR)
//

#include "./Acquisition/Radio.hpp"
#include "./Acquisition/File/RadioFichierRAW.hpp"
#include "./Acquisition/File/RadioFichierUHD.hpp"
#include "./Acquisition/Radio/ReceiverUSRP.hpp"
#include "./Acquisition/Radio/RadioHackRF.hpp"
#include "./Acquisition/Radio/ReceiverHackRF.hpp"

//#define _TIME_PROFILE_

//
//  Conversion des nombres complexes => module flottant
//

#include "./Conversion/INTER_x86/ConversionScalar.hpp"
#include "./Conversion/INTER_NEON/ConversionNEON.hpp"
#include "./Conversion/INTER_AVX2/ConversionAVX2.hpp"


//
//  Correlateur permettant de détecter le prologue des trames ADSB
//

#include "./Detecteur/Detecteur.hpp"
#include "./Detecteur/INTER_x86/DetecteurScalar.hpp"
#include "./Detecteur/INTRA_NEON/Detecteur_NEON.hpp"
#include "./Detecteur/INTRA_AVX2/Detecteur_AVX2.hpp"
#include "./Detecteur/INTER_AVX2/DetecteurINTER_AVX2.hpp"
//#include "Detecteur/INTER_AVX2/Detecteur_NEON.hpp"



#include "./Frame/Frame.hpp"
#include "./Sampling/Down/DownSampling.hpp"
#include "./PPM/Demodulator/PPM_Demodulator.hpp"

#include "couleur.h"

using namespace std;

bool isFinished = false;

void my_ctrl_c_handler(int s){
    if( isFinished == true )
    {
        exit( -1 );
    }
    isFinished = true;
}

void show(std::vector<float>& v)
{
    const uint32_t ll = v.size();
    for(uint32_t i = 0; i < ll; i += 1)
    {
        if( i%16 == 0 )
            printf("\n");
        printf("%1.3f ", v[i]);
    }
    printf("\n");
}

/*   ============================== MAIN =========================== */
/*
	4 ech = 1 symb
	1 trame = 120 symb = 480 ech
*/
int main(int argc, char* argv[])
{

    struct sigaction sigIntHandler;
    sigIntHandler.sa_handler = my_ctrl_c_handler;
    sigemptyset(&sigIntHandler.sa_mask);
    sigIntHandler.sa_flags = 0;
    sigaction(SIGINT, &sigIntHandler, NULL);


	uint32_t nbTramesDetectees = 0; // nbre trame ...
    uint32_t nbTotalTrames = 0;
    uint32_t nbBonsCRCs = 0;

	int c; //getopt

    float fc = 433000000;
    float fe = 1000000;

    uint32_t payload = 16; // Nombre de bytes utiles par frame

	bool verbose = 0;
	float ps_min = 0.75;
	int Np = 10000;
    bool mode_inter = false;

	static struct option long_options[] =
	{
		{"verbose", no_argument,         NULL, 'v'},  // affiche temps sur chaque boucle Np + cplx => abs
		{"seuil",   required_argument,   NULL, 's'},  // pour changer la valeur min de la correlation (synchro)
		{"np",      required_argument,   NULL, 'n'},  // pour changer le nombre de boucle Np (ie nbre echantillon*200000) // Np = 10 => 0.5 s

		{"conv",    required_argument,   NULL, 'c'}, // a partir d'un fichier
		{"corr",    required_argument,   NULL, 'd'}, // a partir d'un fichier

		{"radio",   required_argument,   NULL, 'r'}, // a partir d'un fichier
		{"file",    required_argument,   NULL, 'F'}, // a partir d'un fichier

		{"fc",      required_argument,   NULL, 'f'}, // changer la frequence de la porteuse
        {"fe",      required_argument,   NULL, 'e'}, // changer la frequence echantillonnage

        {"payload", required_argument,   NULL, 'p'}, // changer la frequence echantillonnage

        {"inter",   no_argument,         NULL, 'I'}, // changer la frequence echantillonnage
        {"intra",   no_argument,         NULL, 'i'}, // changer la frequence echantillonnage

		{NULL,      0,                  NULL, 0}
	};

    std::string mode_radio = "txt";
    std::string filename   = "../data/data_uhd.txt";

    std::string mode_conv = "scalar";
    std::string mode_corr = "scalar";

	int option_index = 0;

	vector<complex<float> > buffer( fe/2 ); // Notre buffer à nous dans le programme
	vector<complex<float> > buffer_fichier;

    cout << "par Florian LOUPIAS - Février 2020" << endl;
    cout << "par Bertrand LE GAL - Octobre 2020" << endl;
	cout << "==================================== ADSB ====================================" << endl;
	// ============== GETOPT ================
	printf("%s",KRED);

	while ((c = getopt_long(argc, argv, "be:p:f:n:s:vt8",long_options, &option_index)) != -1) {
		switch (c) {
			case 0:
			    printf ("%soption %s%s", long_options[option_index].name, KNRM, KRED);
			    if (optarg)
				printf ("%s with arg %s%s", optarg, KNRM, KRED);
			    printf ("\n");
			    break;
            case 'f':
                fc = atof(optarg);
                printf("%soption fc = %f Hz%s\n", KNRM, fc, KRED);
                break;
            case 'p':
                payload = atoi(optarg);
                printf("%soption payload = %d bytes%s\n", KNRM, payload, KRED);
                break;
			case 'e' :
				fe = atof(optarg);
				printf("%soption fe = %f Hz%s\n", KNRM, fe, KRED);
				break;
			case 's':
		        ps_min = atof(optarg);
			    if ((ps_min > 1) || (ps_min < 0)){
				 ps_min = 0.75;
				 printf("erreur : --produit_scalaire ou -s compris entre 0 et 1");
			    	cout <<" ==>  option produit_scalaire : "<< ps_min << endl;
			    } else printf("%soption produit_scalaire : %f%s\n", KNRM, ps_min, KRED);
			    break;
			case 'n':
		        Np = atoi(optarg);
			    if ((Np < 1)){
				 Np = 100;
				 printf("erreur : --Np ou -n est entier >1");
			    	 cout <<" ==>  option Np : "<< Np << endl;
			    } else printf("%soption Np : %d%s\n", KNRM, Np, KRED);
			    break;
			case 'v':
			    verbose = 1;
				printf("%soption verbose%s\n", KNRM, KRED);
			    break;

            case '?':
                break;

            case 'c':
                mode_conv = optarg;
                printf("%soption mode_conv = %s%s\n", KNRM, mode_conv.c_str(), KRED);
                break;

            case 'd':
                mode_corr = optarg;
                printf("%soption mode_corr = %s%s\n", KNRM, mode_corr.c_str(), KRED);
                break;

            case 'r':
                mode_radio = "radio";
                filename   = optarg;
                break;

            case 'F':
                mode_radio = "file";
                filename   = optarg;
                break;

            case 'I':
                mode_inter = true;
                break;

            case 'i':
                mode_inter = false;
                break;

		    default:
			    printf ("?? getopt returned character code 0%o ??\n", c);
		}
	}
	if (optind < argc) {
		printf ("non-option ARGV-elements: ");
        while (optind < argc)
            printf ("%s ", argv[optind++]);
            printf ("\n");
            exit( -1 );
	}
	printf("%s",KNRM);
	cout << endl;




	//	Detecteur*      detecteur      = new Detecteur();
//	Detecteur8par8* detecteur8par8 = new Detecteur8par8();

	//
	// Selection du module SDR employé dans le programme
	//
    Radio* radio;
    if( mode_radio == "radio" && filename == "hackrf" )
    {
        radio = new ReceiverHackRF(fc, fe);
    }
    else if( mode_radio == "radio" && filename == "hackrf-old" )
    {
        radio = new RadioHackRF(fc, fe);
    }
    else if( mode_radio == "radio" && filename == "uhd" )
    {
        radio = new ReceiverUSRP(fc, fe);
    }
    else if( mode_radio == "file" && (filename.find(".raw") != -1) )
    {
        radio = new RadioFichierRAW(filename);
    }
    else if( mode_radio == "file" && (filename.find(".txt") != -1) )
    {
        radio = new RadioFichierUHD(filename);
    }
    else
    {
        cout << "oups !" << endl;
        cout << "mode_radio = " << mode_radio << endl;
        cout << "filename   = " << filename   << endl;
        exit( -1 );
    }

    //
    // Selection du module de correlation employé dans le programme
    //

    Detecteur* detect;
    if( mode_corr == "scalar" )
        detect = new DetecteurScalar();
    else if( mode_corr == "AVX2" )
        detect = new Detecteur_AVX2();
    else if( mode_corr == "NEON" )
        detect = new Detecteur_NEON();
    else
    {
        std::cout << "(EE) Le type de module de Correlation demandé n'est actuellement pas dispnible :" << std::endl;
        std::cout << "(EE) type = " << mode_corr                                                        << std::endl;
        exit( -1 );
    }


    //
    // Selection du module de conversion employé dans le programme
    //

    Conversion* conv;
    if( mode_conv == "scalar" ){
        conv = new ConversionScalar();
    } else if( mode_conv == "AVX2" ) {
        conv = new ConversionAVX2();
    } else if( mode_conv == "NEON" ) {
        conv = new ConversionNEON();
    }
    else
    {
        std::cout << "(EE) Le type de module de Conversion demandé n'est actuellement pas dispnible :" << std::endl;
        std::cout << "(EE) type = " << mode_corr                                                        << std::endl;
        exit( -1 );
    }


    //
    // Selection du module de conversion employé dans le programme
    //

    Frame f( payload );

    //
    // Selection du module de conversion employé dans le programme
    //

    radio->initialize();
    radio->start_engine();

    auto start = std::chrono::system_clock::now();

    //
    // Selection du module de conversion employé dans le programme
    //

#ifdef _TIME_PROFILE_
    double timer_reception     = 0.0;
    double timer_conv_cplx     = 0.0;
    double timer_detecteur     = 0.0;
    double timer_extraction    = 0.0;
    double timer_down_sampling = 0.0;
    double timer_demodulator   = 0.0;
    double timer_parsing       = 0.0;
#endif

    //
    // Selection du module de conversion employé dans le programme
    //

	while( radio->alive() && (isFinished == false) )
	{
#ifdef _TIME_PROFILE_
        auto depart    = chrono::high_resolution_clock::now();
#endif

        radio->reception(buffer);

#ifdef _TIME_PROFILE_
        auto reception   = chrono::high_resolution_clock::now();
        timer_reception += chrono::duration_cast<chrono::nanoseconds>(reception - depart).count();
#endif

		vector<float> buffer_abs;
        conv->execute( &buffer, &buffer_abs );

#ifdef _TIME_PROFILE_
        auto conv_cplx   = chrono::high_resolution_clock::now();
        timer_conv_cplx += chrono::duration_cast<chrono::nanoseconds>(conv_cplx - reception).count();
#endif


		// ============== detection & decodage ================


        vector<float> buffer_detect;
        if( mode_inter == true )
        {
            detect->execute(&buffer_abs, &buffer_detect);
#ifdef _TIME_PROFILE_
            auto detecteur   = chrono::high_resolution_clock::now();
            timer_detecteur += chrono::duration_cast<chrono::nanoseconds>(detecteur - conv_cplx).count();
#endif
        }


		int k=0;
		while ( k <= (buffer_abs.size() - f.frame_bits())){

#ifdef _TIME_PROFILE_
            auto start_loop = chrono::high_resolution_clock::now();
            auto detecteur  = chrono::high_resolution_clock::now();
#endif
		    float s;
            if( mode_inter == false ) {
                float *addr = buffer_abs.data() + k;
                detect->execute(addr);
                 s = detect->getValue(0);
#ifdef _TIME_PROFILE_
                detecteur        = chrono::high_resolution_clock::now();
                timer_detecteur += chrono::duration_cast<chrono::nanoseconds>(detecteur - start_loop).count();
#endif
            }else{
                s = buffer_detect[k];
            }

            if (s > ps_min)
            {
                nbTramesDetectees +=1;    // On vient de detecter qqchose

					std::vector<int8_t> buff_5( 4 * f.frame_bits() );
                    for (int j=0; j < buff_5.size(); j += 1){
                        int32_t v = buffer_abs[k+j];
                        v = (v > +127) ? +127 : v;
                        v = (v < -127) ? -127 : v;
                        buff_5[j]   = v;
                    }

#ifdef _TIME_PROFILE_
                    auto extraction   = chrono::high_resolution_clock::now();
                    timer_extraction += chrono::duration_cast<chrono::nanoseconds>(extraction - detecteur).count();
#endif

                    DownSampling down(2);
                    std::vector<int8_t> buff_6;
                    down.execute( buff_5, buff_6 );

#ifdef _TIME_PROFILE_
                    auto down_sampling   = chrono::high_resolution_clock::now();
                    timer_down_sampling += chrono::duration_cast<chrono::nanoseconds>(down_sampling - extraction).count();
#endif

                    PPM_Demodulator ppd;
                    std::vector<uint8_t> buff_7(8 + 8 * (2 + 16 + 4));
                    ppd.execute(buff_6, buff_7);

#ifdef _TIME_PROFILE_
                    auto demodulator   = chrono::high_resolution_clock::now();
                    timer_demodulator += chrono::duration_cast<chrono::nanoseconds>(demodulator - down_sampling).count();
#endif

                    bool isOK = f.fill_frame_bits( buff_7 );

                    if( isOK )
                    {
                        nbTotalTrames += 1;        // C'est bien une trame ADSB-like
                        nbBonsCRCs    += f.validate_crc();

                        if( verbose )
                        {
                            printf("%1.3f : ", s);
                            f.dump_frame();
                        }

                        k += f.frame_bits() - 1; // On saute tous les bits qui composaient notre trame...
                    }

#ifdef _TIME_PROFILE_
                    auto parsing   = chrono::high_resolution_clock::now();
                    timer_parsing += chrono::duration_cast<chrono::nanoseconds>(parsing - demodulator).count();
#endif
				}
			k++;
		}
	}


	// =============== AFFICHAGE FINAL =====================
	printf("\n================================================================\n");

    auto end = std::chrono::system_clock::now();
    std::chrono::duration<double> elapsed = end - start;

    printf("\n");
    std::cout << "nombre de trames detectees : " << nbTramesDetectees << std::endl;
    std::cout << "nombre de trames like      : " << nbTotalTrames     << std::endl;
    std::cout << "nombre de trames bon crc   : " << nbBonsCRCs        << std::endl;
    printf("\n");
    std::cout << "Nombre de trames emises  (frames)  = " << nbBonsCRCs                                  << std::endl;

printf("%s", KGRN);
    std::cout << "Temps total d'émission   (seconds) = " << elapsed.count()                             << std::endl;
printf("%s", KNRM);

    std::cout << "Trames par seconde       (frames)  = " << (nbBonsCRCs/elapsed.count())                << std::endl;
    std::cout << "Débit emis par seconde   (bits)    = " << (nbBonsCRCs/elapsed.count()*f.frame_bits()) << std::endl;
    std::cout << "Débit utile par seconde  (bytes)   = " << (nbBonsCRCs/elapsed.count()*payload)        << std::endl;
    std::cout << "Débit utile par seconde  (bits)    = " << (nbBonsCRCs/elapsed.count()*payload*8)      << std::endl;
    printf("\n");
    std::cout << "Temps total : " << chrono::duration_cast<chrono::milliseconds>(end - start).count() << " ms" << std::endl;
#ifdef _TIME_PROFILE_
    std::cout << " -  timer_reception     = " << (timer_reception/1000/1000)     << " ms" << std::endl;
    std::cout << " -  timer_conv_cplx     = " << (timer_conv_cplx/1000/1000)     << " ms" << std::endl;
    std::cout << " -  timer_detecteur     = " << (timer_detecteur/1000/1000)     << " ms" << std::endl;
    std::cout << " -  timer_extraction    = " << (timer_extraction/1000/1000)    << " ms" << std::endl;
    std::cout << " -  timer_down_sampling = " << (timer_down_sampling/1000/1000) << " ms" << std::endl;
    std::cout << " -  timer_demodulator   = " << (timer_demodulator/1000/1000)   << " ms" << std::endl;
    std::cout << " -  timer_parsing       = " << (timer_parsing/1000/1000)       << " ms" << std::endl;
#endif
    printf("\n");

    delete radio;
    delete detect;
    delete conv;

	return 0;
}
