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

#include "./Tools/BMP.hpp"
#include "./Tools/Parameters.hpp"
#include "./Tools/CTickCounter.hpp"

#include "./Format/cvt_float_u8.hpp"


//
//  Definition des modules permettant d'utiliser le module Radio (SdR)
//

#include "./Acquisition/Radio.hpp"
#include "./Acquisition/File/ReceiverFileRAW.hpp"
#include "./Acquisition/File/ReceiverFileUHD.hpp"
#include "./Acquisition/Radio/ReceiverUSRP.hpp"
#include "./Acquisition/Radio/ReceiverSoapy.hpp"
#include "./Acquisition/Radio/ReceiverHackRF.hpp"

//#define _TIME_PROFILE_

//
//  Conversion des nombres complexes => module flottant
//

#include "./Conversion/INTER_x86/CplxModule_x86.hpp"
#include "./Conversion/INTER_NEON/CplxModule_NEON.hpp"
#include "./Conversion/INTER_AVX2/CplxModule_AVX2.hpp"


//
//  Correlateur permettant de détecter le prologue des trames ADSB
//

#include "./Detecteur/Detector.hpp"
#include "./Detecteur/INTER_x86/DetectorScalar.hpp"
#include "./Detecteur/INTRA_NEON/Detector_NEON.hpp"
#include "./Detecteur/INTRA_AVX2/Detector_AVX2.hpp"
//#include "Detector/INTER_AVX2/Detector_NEON.hpp"

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
    uint32_t nbTotalTrames     = 0;
    uint32_t nbBonsCRCs        = 0;

	int c; //getopt

    Parameters param;

    param.set("mode_radio",   "radio");
    param.set("filename",   "hackrf");

    param.set("fc",      433000000.0);
    param.set("fe",        1000000.0);

    param.set("mode_conv",        "AVX2"); // scalar
    param.set("mode_corr",        "AVX2"); // scalar

    param.set("payload", 16);

    param.set("verbose", 0);

    param.set("ps_min", 0.75f);

    param.set("mode_inter", false);
    param.set("dump_first_frame", false);

    param.set("crystal_correct",   0);

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
        {"dumpf",   no_argument,         NULL, 'D'}, // changer la frequence echantillonnage
        {"ppm",  required_argument, NULL, 'P'}, // changer la frequence echantillonnage

		{NULL,      0,                  NULL, 0}
	};

	int option_index = 0;

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
                param.set("fc",   std::stod(optarg));
                break;

            case 'e' :
                param.set("fe",   std::stod(optarg));
                break;

            case 'p':
                param.set("payload",   std::atoi(optarg));
                break;

			case 's':
                param.set("ps_min",   std::stof(optarg));
			    if ( (param.toFloat("ps_min") > 1.0f) || (param.toFloat("ps_min") < 0.0f)) {
                    printf("erreur : --produit_scalaire (ps_min) doit etre compris entre 0 et 1\n");
                    exit( -1 );
                }
			    break;

			case 'v':
                param.set("verbose", param.toInt("verbose") + 1);
			    break;

            case '?':
                break;

            case 'c':
                param.set("mode_conv", optarg);
                break;

            case 'd':
                param.set("mode_corr", optarg);
                break;

            case 'r':
                param.set("mode_radio", "radio");
                param.set("filename", optarg);
                break;

            case 'F':
                param.set("mode_radio", "file");
                param.set("filename", optarg);
                break;

            case 'I':
                param.set("mode_inter", true);
                break;

            case 'i':
                param.set("mode_inter", false);
                break;

            case 'D':
                param.set("dump_first_frame", true);
                break;

            case 'P' :
                param.set("crystal_correct",   std::atoi(optarg));
                printf("%soption crystal_correct = %d dB%s\n", KNRM, param.toInt("crystal_correct"), KRED);
                break;

		    default:
			    printf ("?? getopt returned character code 0%o ??\n", c);
			    exit( -1 );
                break;
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

    vector<complex<float> > buffer   ( param.toDouble("fe")/2 ); // Notre buffer à nous dans le programme
    vector<complex<float> > buffer_fichier;

	//
	// Selection du module SDR employé dans le programme
	//

    Radio* radio;
    if( param.toString("mode_radio") == "radio" && param.toString("filename") == "hackrf" ) {
        radio = new ReceiverHackRF(param.toDouble("fc"), param.toDouble("fe"));

    } else if( param.toString("mode_radio") == "radio" && param.toString("filename") == "Soapy" ) {
        radio = new ReceiverSoapy(param.toDouble("fc"), param.toDouble("fe"));

    } else if( param.toString("mode_radio") == "radio" && param.toString("filename") == "uhd" ) {
        radio = new ReceiverUSRP(param.toDouble("fc"), param.toDouble("fe"));

    } else if( param.toString("mode_radio") == "file" && (param.toString("filename").find(".raw") != -1) ) {
        radio = new ReceiverFileRAW(param.toString("filename"));

    } else if( param.toString("mode_radio") == "file" && (param.toString("filename").find(".txt") != -1) ) {
        radio = new ReceiverFileUHD(param.toString("filename"));
    }
    else
    {
        cout << "Error in file (" << __FILE__ << ")" << " at line (" << __LINE__ << ")" << endl;
        cout << "mode_radio = " << param.toString("mode_radio") << endl;
        cout << "filename   = " << param.toString("filename")      << endl;
        exit( -1 );
    }

    //
    // Selection du module de correlation employé dans le programme
    //

    Detector* detect;
    if( param.toString("mode_corr") == "scalar" ){
        detect = new DetectorScalar();
    } else if( param.toString("mode_corr") == "AVX2" ){
        detect = new Detector_AVX2();
    } else if( param.toString("mode_corr") == "NEON" ){
        detect = new Detector_NEON();
    }
    else
    {
        std::cout << "(EE) Le type de module de Correlation demandé n'est actuellement pas dispnible :" << std::endl;
        std::cout << "(EE) type = " << param.toString("mode_corr")                                   << std::endl;
        exit( -1 );
    }


    //
    // Selection du module de conversion employé dans le programme
    //

    Conversion* conv;
    if( param.toString("mode_conv") == "scalar" ){
        conv = new CplxModule_x86();
    } else if( param.toString("mode_conv") == "AVX2" ) {
        conv = new CplxModule_AVX2();
    } else if( param.toString("mode_conv") == "NEON" ) {
        conv = new CplxModule_NEON();
    }
    else
    {
        std::cout << "(EE) Le type de module de Conversion demandé n'est actuellement pas dispnible :" << std::endl;
        std::cout << "(EE) type = " << param.toString("mode_conv")                                     << std::endl;
        exit( -1 );
    }

    Frame f( param.toInt("payload") );

    printf("(II) Launching the emitter application :\n");
    printf("(II) -> Modulation frequency    : %4d MHz\n",    (uint32_t)(param.toDouble("fc"     )/1000000.0));
    printf("(II) -> Symbol sampling freq.   : %4d MHz\n",    (uint32_t)(param.toDouble("fe"     )/1000000.0));
    printf("(II)\n");

    const int32_t crystal_correct_ppm = param.toInt("crystal_correct");
    if( crystal_correct_ppm != 0 )
    {
        double freq_hz        = param.toDouble("fc");
        double sample_rate_hz = param.toDouble("fe");

        sample_rate_hz = (uint32_t)((double)sample_rate_hz * (1000000.0 - crystal_correct_ppm)/1000000.0+0.5);
        freq_hz        = freq_hz * (1000000.0 - crystal_correct_ppm)/1000000.0;

        param.set("fc",           freq_hz);
        param.set("fe",    sample_rate_hz);

        printf("(II) -> Corrected modulation frequency    : %4d MHz\n",    (uint32_t)(param.toDouble("fc"     )/1000000.0));
        printf("(II) -> Corrected symbol sampling freq.   : %4d MHz\n",    (uint32_t)(param.toDouble("fe"     )/1000000.0));
        printf("(II)\n");
    }

    printf("(II) ADSB-like configuration parameters :\n");
    printf("(II) -> ADSB-like payload length  : %d bytes\n", f.payload_size());
    printf("(II) -> ADSB-like frame length    : %d bits\n",  f.frame_bits());
    printf("(II)\n");
    printf("(II) HackRF module configuration :\n");
    printf("(II) -> HackRF antenna parameter   : enable\n" );
    printf("(II) -> HackRF amplifier parameter : disable\n");


    //
    // Selection du module de conversion employé dans le programme
    //


    //
    // Selection du module de conversion employé dans le programme
    //

    radio->initialize();
    radio->start_engine();

    auto start = std::chrono::system_clock::now();


    //
    // Selection du module de conversion employé dans le programme
    //

    CTickCounter timer;

    const float ps_min = param.toFloat("ps_min");
    uint32_t loop_counter = 0;


    std::vector<float> buffer_abs;
    std::vector<float> buffer_detect;

    DownSampling down(2);
    PPM_Demodulator ppd;

    std::vector<uint8_t> buff_5( 4 * f.frame_bits() );
    std::vector<uint8_t> buff_6;
    std::vector<uint8_t> buff_7;

    BMP* bmp = nullptr;
    int32_t i_width  = -1;
    int32_t i_height = -1;
    int32_t curr_x   =  0;
    int32_t curr_y   =  0;

    uint32_t nBytesPerPixel = 0;
    uint32_t nBytesPerLine = 0;

    const uint32_t payload = f.payload_size();

    const bool mode_inter = param.toBool("mode_inter");
	while( radio->alive() && (isFinished == false) )
	{
	    //
	    //
	    //
        timer.start_loading();
        radio->reception(buffer);
        timer.stop_loading();

        //
        //
        //
        timer.start_conversion();
        conv->execute( &buffer, &buffer_abs );
        timer.stop_conversion();

        //
        //
        //
        if( mode_inter == true )
        {
            timer.start_detection();
            radio->reception(buffer);
            detect->execute(&buffer_abs, &buffer_detect);
            timer.stop_detection();
        }

        //
        //
        //
        const uint32_t verbose =  param.toInt("verbose");
        const uint32_t length  = (buffer_abs.size() - 4 * f.frame_bits());
        for(int k = 0; k <= length; k += 1)
		{

            //
            //
            //
		    float s;
            if( mode_inter == false ) {
                timer.start_detection();
                detect->execute( buffer_abs.data() + k );
                 s = detect->getValue(0);
                timer.stop_detection();
            }else{
                s = buffer_detect[k];
            }


            //
            //
            //
            if (s > ps_min)
            {
                timer.start_decoding();
                nbTramesDetectees +=1;    // On vient de detecter qqchose

#if 0
                for (int j=0; j < buff_5.size(); j += 1)
                {
                    uint32_t v = buffer_abs[k+j];
                    v = (v > +255) ? +255 : v;
                    buff_5[j]   = v;
                }
#else
                cvt_float_u8::execute( buffer_abs.data() + k, &buff_5 );
#endif
                down.execute(buff_5, buff_6);
                ppd.execute (buff_6, buff_7);

                const bool isOK = f.fill_frame_bits( buff_7 );
                if( isOK )
                {
                    nbTotalTrames += 1;        // C'est bien une trame ADSB-like
                    nbBonsCRCs    += f.validate_crc();

                    if( verbose == 2 )
                    {
                        printf("%1.3f : ", s);
                        f.dump_frame();
                    }

                    k += (4 * f.frame_bits()) - 1; // On saute tous les bits qui composaient notre trame...

                    // Début de la gestion et generation des images
                    if(f.get_type() == FRAME_NEW_IMAGE)
                    {
                        i_width  = f.data_u32(0);
                        i_height = f.data_u32(1);

                        bmp = new BMP(i_width, i_height);

                        nBytesPerPixel = (bmp->bmp_info_header.bit_count / 8);
                        nBytesPerLine  = (bmp->bmp_info_header.width * nBytesPerPixel);

                        if( verbose >= 1 )
                            printf("(DD) Creation d'une image ( %d x %d )\n", i_width, i_height);

                    }
                    else if(f.get_type() == FRAME_END_IMAGE)
                    {
                        if( verbose >= 1 )
                            printf("(DD) Fin de reception de l'image\n");
                        bmp->write("image.bmp");
                    }
                    else if(f.get_type() == FRAME_NEW_LINE)
                    {
                        curr_x = 0;
                        curr_y = f.data_u32(0);

                        if( verbose >= 1 )
                            printf("(DD) - Begin of line (%d)\n", curr_y);
                    }
                    else if(f.get_type() == FRAME_END_LINE)
                    {
                        const uint32_t y_value = f.data_u32(0);
                        if( curr_y != y_value )
                            printf("(EE) - End of line (%d) but the curr_y value is %d\n", y_value, curr_y);

                        if( verbose >= 1 )
                            printf("(DD) - End of line (%d)\n", y_value);
                    }
                    else if(f.get_type() == FRAME_INFOS)
                    {
                        if( curr_x < i_width )
                        {
                            if( verbose >= 1 )
                                printf("(DD) --- Receiving pixel set (%d)\n", curr_x);

                            uint8_t* ptr = bmp->data.data() + curr_y * nBytesPerLine + curr_x * nBytesPerPixel;
                            for( uint32_t i = 0; i < payload; i +=1 )
                                ptr[i] = f.data(i);
                            curr_x += (payload / 3);    // on avance dans la ligne
                        }else{
                            printf("(EE) --- Receiving pixel set (%d) whereas i_width = %d\n", curr_x, i_width);
                        }
                    }
                    else
                    {
//                        printf("(WW) Something strange happen, the frame type is %d\n", f.get_type());
//                        printf("(WW) %s :: %d\n", __FILE__, __LINE__);
                        printf("%1.3f : ", s);
                        f.dump_frame();
//                        exit( -1 );
                    }
                    // Fin de la gestion et generation des images
                }
                timer.stop_decoding();
            }
        }
        loop_counter += 1;
	}

//	if( bmp != nullptr )
//    {
//        bmp->write("image.bmp");
//        delete bmp;
//    }

    printf("\n================================================================\n");
    std::cout << "loading    : " << timer.loading()     << std::endl;
    std::cout << "conversion : " << timer.conversion()  << std::endl;
    std::cout << "decoding   : " << timer.detection()   << std::endl;
    std::cout << "criterion  : " << timer.decoding()   << std::endl;
	printf("================================================================\n");

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

    std::cout << "Trames par seconde       (frames)  = " << (nbBonsCRCs/elapsed.count())                    << std::endl;
    std::cout << "Débit emis par seconde   (bits)    = " << (nbBonsCRCs/elapsed.count()*f.frame_bits())     << std::endl;
    std::cout << "Débit utile par seconde  (bytes)   = " << (nbBonsCRCs/elapsed.count()*f.payload_size())   << std::endl;
    std::cout << "Débit utile par seconde  (bits)    = " << (nbBonsCRCs/elapsed.count()*f.payload_size()*8) << std::endl;
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
