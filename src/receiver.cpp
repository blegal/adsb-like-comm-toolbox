#include <iostream>
#include <complex>
#include <cstdio>
#include <cstdlib>
#include <fstream>
#include <vector>
#include <math.h>
#include <bitset>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <chrono>
#include <getopt.h>

#include "liste_avion.h"  // qui inclut avion.h

#include "Acquisition/Radio.hpp"
#include "Acquisition/Radio/RadioUSRP.hpp"
#include "Acquisition/Radio/RadioHackRF.hpp"
#include "Acquisition/File/RadioFichierRAW.hpp"
#include "Acquisition/File/RadioFichierUHD.hpp"


#include "./Detecteur/Detecteur.hpp"
#include "Detecteur/INTER_x86/DetecteurScalar.hpp"
#include "Detecteur/INTRA_NEON/Detecteur_NEON.hpp"

#include "decodage.h"

#include "abs.h"

#include "./Conversion/ConversionScalar.hpp"
#include "./Conversion/ConversionNEON.hpp"
#include "./Conversion/ConversionAVX2.hpp"

#include "./Frame/Frame.hpp"
#include "./Sampling/Down/DownSampling.hpp"
#include "./PPM/Demodulator/PPM_Demodulator.hpp"


#include "couleur.h"

using namespace std;

/*   ============================== MAIN =========================== */
/*
	4 ech = 1 symb
	1 trame = 120 symb = 480 ech
*/
int main(int argc, char* argv[])
{
	uint32_t nbTramesDetectees = 0; // nbre trame ...
    uint32_t nbTotalTrames = 0;
    uint32_t nbBonsCRCs = 0;

	int c; //getopt
	int basique = 0;
    float fc = 1090e6;
    float fe = 4e6;
	int verbose = 0;
	int aff_trame = 1;
	float ps_min = 0.75;
	int Np = 10000;
	int huit = 0;
	static struct option long_options[] =
	{
		{"verbose", no_argument,         NULL, 'v'},  		// affiche temps sur chaque boucle Np + cplx => abs
		{"trame",   no_argument,         NULL, 't'},   		// DESACTIVE affiche toutes les trames adsb reçues
		{"seuil",   required_argument,   NULL, 's'}, 	// pour changer la valeur min de la correlation (synchro)
		{"np",      required_argument,   NULL, 'n'}, 		// pour changer le nombre de boucle Np (ie nbre echantillon*200000) // Np = 10 => 0.5 s
		{"huit",    no_argument,         NULL, '8'},  // detecteur8par8 -- plus rapide

		{"conv",    required_argument,   NULL, 'c'}, // a partir d'un fichier
		{"corr",    required_argument,   NULL, 'd'}, // a partir d'un fichier
		{"radio",   required_argument,   NULL, 'r'}, // a partir d'un fichier
		{"file",    required_argument,   NULL, 'f'}, // a partir d'un fichier

		{"fc",      required_argument,   NULL, 'p'}, // changer la frequence de la porteuse
		{"fe",      required_argument,   NULL, 'e'}, // changer la frequence echantillonnage
		{"basique", no_argument,         NULL, 'b'}, // detecteur_basique -- plus lent
		{NULL,      0,                   NULL, 0}
	};

    std::string mode_radio = "txt";
    std::string filename   = "../data/data_uhd.txt";


	int option_index = 0;

	vector<complex<float> > buffer(200000); // Notre buffer à nous dans le programme
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
			case 'p':
				fc = atof(optarg);
				printf("%soption fc = %f Hz%s\n", KNRM, fc, KRED);
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
			case 'b':
			    basique = 1;
				printf("%soption basique%s\n", KNRM, KRED);
			    break;
			case 't':
			    aff_trame = 0;
				printf("%soption trame : pas d'affichage%s\n", KNRM, KRED);
			    break;
			case '8' :
				huit = 1;
				printf("%soption huit%s\n",KNRM, KRED);

            case '?':
                break;

            //{"conv",    required_argument,   NULL, 'c'}, // a partir d'un fichier
            case 'c':
                break;

            //{"corr",    required_argument,   NULL, 'd'}, // a partir d'un fichier
            case 'd':
                break;

            //{"radio",   required_argument,   NULL, 'r'}, // a partir d'un fichier
            case 'r':
                mode_radio = "radio";
                filename   = optarg;
                break;

            //{"file",    required_argument,   NULL, 'f'}, // a partir d'un fichier
            case 'f':
                mode_radio = "file";
                filename   = optarg;
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
	}
	printf("%s",KNRM);
	cout << endl;

#if 1
	Detecteur* detecteur      = new DetecteurScalar();
#endif
#if defined(__ARM_NEON)
	Detecteur_NEON*  detecteur      = new Detecteur_NEON();
#endif
	//	Detecteur*      detecteur      = new Detecteur();
//	Detecteur8par8* detecteur8par8 = new Detecteur8par8();

	//=============== INITIALISATION RADIO ================

    Radio* radio;
    if( mode_radio == "radio" && filename == "hackrf" )
    {
        radio = new RadioHackRF(fc, fe);
    }
    else if( mode_radio == "radio" && filename == "uhd" )
    {
        radio = new RadioUSRP(fc, fe);
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

    radio->initialize();

    auto start = chrono::high_resolution_clock::now();

	while( radio->alive() )
	{
		auto np1 = chrono::high_resolution_clock::now();

        radio->reception(buffer);

		vector<float> buffer_abs;
		cplx2abs(verbose, &buffer, &buffer_abs);

#if 0
        float minv = buffer_abs[0];
        float maxv = buffer_abs[0];
        uint32_t len = buffer.size();
        for (uint32_t k = 1;  k < len; k++) {
            minv = minv < buffer_abs[k] ? minv : buffer_abs[k];
            maxv = maxv > buffer_abs[k] ? maxv : buffer_abs[k];
        }
#endif

		// ============== detection & decodage ================
		int k=0;
		while ( k <= (buffer_abs.size() - 480)){ //480 = taille trame (ech)

			float s;
			float* addr = buffer_abs.data() + k;

			if (!huit){
				if (!basique){
					detecteur->execute(addr);
					s = detecteur->getValue( 0 );
				}
				else{
					detecteur->execute(addr);
					s = detecteur->getValue( 0 );
				}

				if (s > ps_min){

                    nbTramesDetectees++;    // On vient de detecter qqchose

                    Frame g( 16 );

					// -------- on a une trame : ech
					std::vector<int8_t> buff_5( 4 * g.frame_bits() );
                    for (int j=0; j < buff_5.size(); j += 1){
                        int32_t v = buffer_abs[k+j];
                        v = (v > +127) ? +127 : v;
                        v = (v < -127) ? -127 : v;
                        buff_5[j]   = v;
                    }

                    DownSampling down(2);
                    std::vector<int8_t> buff_6;
                    down.execute( buff_5, buff_6 );

                    PPM_Demodulator ppd;
                    std::vector<uint8_t> buff_7(8 + 8 * (2 + 16 + 4));
                    ppd.execute(buff_6, buff_7);

                    bool isOK = g.fill_frame_bits( buff_7 );
                    nbTotalTrames += isOK;
                    if( isOK )
                    {
                        nbTotalTrames++;        // C'est bien une trame ADSB-like
                        nbBonsCRCs   += g.validate_crc();
                        printf("%1.3f : ", s);
                        g.dump_frame();
                    }
				}
			}
			k++;
		}
		// ============== affichage resultats partiels ================
		auto np2 = chrono::high_resolution_clock::now();

		if (verbose) {
			cout << "nombre de trames detectees : " << nbTramesDetectees << endl;
            cout << "nombre de trames like      : " << nbTotalTrames     << endl;
            cout << "nombre de trames bon crc   : " << nbBonsCRCs        << endl;
            cout << "Temps total : " << chrono::duration_cast<chrono::milliseconds>(np2 - np1).count() << " ms" << endl;
		}

        nbBonsCRCs += nbBonsCRCs;
        nbTramesDetectees = 0;
	}


	// =============== AFFICHAGE FINAL =====================
	printf("\n================================================================\n");

	auto end = chrono::high_resolution_clock::now();

    cout << "nombre de trames detectees : " << nbTramesDetectees << endl;
    cout << "nombre de trames like      : " << nbTotalTrames     << endl;
    cout << "nombre de trames bon crc   : " << nbBonsCRCs        << endl;
	cout << "Temps total : " << chrono::duration_cast<chrono::milliseconds>(end - start).count() << " ms" << endl;
	

	//if (!fichier) radio->reset();

	//delete radio;
	//delete detecteur8par8;
	delete detecteur;

	return 0;
}
