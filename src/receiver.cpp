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
//#include <immintrin.h>

#include "liste_avion.h"  // qui inclut avion.h

#include "Acquisition/Radio.hpp"
#include "Acquisition/Radio/RadioUSRP.hpp"
#include "Acquisition/Radio/RadioHackRF.hpp"
#include "Acquisition/File/RadioFichierRAW.hpp"
#include "Acquisition/File/RadioFichierUHD.hpp"

//#include "detecteur.h"
//#include "detecteur8par8.h"

#include "./Detecteur/Detecteur.hpp"
#include "./Detecteur/DetecteurScalar.hpp"
#include "./Detecteur/Detecteur_NEON.hpp"

#include "decodage.h"

#include "abs.h"

#include "./Conversion/ConversionScalar.hpp"
#include "./Conversion/ConversionNEON.hpp"
#include "./Conversion/ConversionAVX2.hpp"

#include "couleur.h"

using namespace std;

/*   ============================== MAIN =========================== */
/*
	4 ech = 1 symb
	1 trame = 120 symb = 480 ech
*/
int main(int argc, char* argv[])
{

	int trame[120];
	Liste_Avion *liste_avion;
	liste_avion = new Liste_Avion();

	int nbtrame = 0; // nbre trame ...
	int nbtrametotal = 0;
	int adsbtotal = 0;
	int bonftctotal = 0;
	int boncrctotal = 0;
	int adsb = 0;
	int bonftc = 0;
	int boncrc = 0;

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
		int this_option_optind = optind ? optind : 1;
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
	DetecteurScalar* detecteur      = new DetecteurScalar();
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

		//
		// On recupere les données depuis la source
		//
        radio->reception(buffer);

		// =============== cplx => abs() ==============
		vector<float> buffer_abs;
		cplx2abs(verbose, &buffer, &buffer_abs);

        float minv = buffer_abs[0];
        float maxv = buffer_abs[0];
        uint32_t len = buffer.size();
        for (uint32_t k = 1;  k < len; k++) {
            minv = minv < buffer_abs[k] ? minv : buffer_abs[k];
            maxv = maxv > buffer_abs[k] ? maxv : buffer_abs[k];
//            cout << buffer_abs[k] << " ";
        }
//        cout <<  endl;

		// ============== detection & decodage ================
		int k=0;
		while ( k <= (buffer_abs.size() - 480)){ //480 = taille trame (ech)
			//cout << "k :" << k << endl;
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

//				printf("%3d :: %f\n", k, s);

				if (s > ps_min){ 
					// -------- on a une trame : ech --------------

					//
					// On a sur-echantillonné par un facteur 2
					//

					for (int j=0; j < 480; j = j+4){	// 120 symbole => 240 bits emits PPM x 2
						if (
						      ( buffer_abs[k+j] + buffer_abs[k+j+1] ) >= ( buffer_abs[k+j+2] + buffer_abs[k+j+3] )
						    ){
							trame[j/4] = 1;	
						} else {
						    trame[j/4] = 0;
						}
					}

					// --------- on a une trame demodulee : symb ------------
					if (
					        (trame[ 8] == 1) && (trame[ 9] == 0) &&
					        (trame[10] == 0) && (trame[11] == 0) &&
					        (trame[12] == 1)
					   ){
						// -------------- on a une trame ads-b -----------------
						k += 479;
						Decodage* decode = new Decodage();
						decode->decodage(s, verbose, aff_trame, trame, liste_avion);
						adsb ++;
						bonftc += decode->get_bonftc();
						boncrc += decode->get_boncrc();
						delete decode;
					}

					nbtrame++;
					nbtrametotal++;	
				}
			} else {
				__attribute__ ((aligned (16))) float s8[8];
				//detecteur8par8->detection(s8, addr);
				exit( 0 );
				for (int kk=0; kk < 8; kk++){
					if (*(s8 + kk) > ps_min){ 
						// -------- on a une trame : ech --------------
						for (int j=0; j < 480; j = j+4){
							if ((buffer_abs[k + kk + j] + buffer_abs[k + kk + j +1]) >= (buffer_abs[k + kk + j +2] + buffer_abs[k + kk + j +3])){
								trame[j/4] = 1;	
							} else {trame[j/4] = 0;}
						}
						// --------- on a une trame demodulee : symb ------------
						if ((trame[8] == 1) &&  (trame[9] == 0) && (trame[10] == 0) && (trame[11] == 0) && (trame[12] == 1)){
							// -------------- on a une trame ads-b -----------------
							Decodage* decode = new Decodage();
							decode->decodage(*(s8 + kk), verbose,  aff_trame, trame, liste_avion);
							k+=471;
							kk = 8;
							adsb ++;
							bonftc += decode->get_bonftc();
							boncrc += decode->get_boncrc();
							delete decode;
						}

						nbtrame++;
						nbtrametotal++;	
					}
				}
				k +=8;
			}
			k++;
		}
		// ============== affichage resultats partiels ================
		auto np2 = chrono::high_resolution_clock::now();

		if (verbose) {
			cout << endl <<  "Temps np :" << chrono::duration_cast<chrono::microseconds>(np2 - np1).count() << "us"<< endl;
			cout << "\nnombre de trames : "<< nbtrame << endl;
			cout << "\nnombre de trames ads-b : "<< adsb << endl;
			cout << "\nnombre de trames ads-b avec bon crc : "<< boncrc << endl;
			cout << "\nnombre de trames ads-b avec bon ftc : "<< bonftc << endl;
		}

		adsbtotal += adsb;
		boncrctotal += boncrc;
		bonftctotal += bonftc;
		nbtrame = 0;
		adsb = 0;
		bonftc = 0;
		boncrc = 0;
	}


	// =============== AFFICHAGE FINAL =====================
	printf("\n================================================================\n");

	cout << "liste des avions :" << endl;
	(*liste_avion).print();

	auto end = chrono::high_resolution_clock::now();

	cout << "\nnombre total de trames : "<< nbtrametotal << endl;
	cout << "\nnombre total de trames ads-b : "<< adsbtotal << endl;
	cout << "\nnombre total de trames ads-b avec bon crc : "<< boncrctotal << endl;
	cout << "\nnombre total de trames ads-b avec bon ftc : "<< bonftctotal << endl;

	cout << "\n\nTemps total : " << chrono::duration_cast<chrono::microseconds>(end - start).count() << " us" << endl;
	cout << "\n\nTemps total : " << chrono::duration_cast<chrono::seconds>(end - start).count() << " s" << endl;
 	cout << "- precision: ";
    	typedef typename std::chrono::high_resolution_clock::period P;// type of time unit
   	if (ratio_less_equal<P,nano>::value) {
      		// convert to and print as nanoseconds
       		typedef typename ratio_multiply<P,giga>::type TT;
       		cout << fixed << double(TT::num)/TT::den << " ns" << endl;
    	}


	

	//if (!fichier) radio->reset();

	//delete radio;
	//delete detecteur8par8;
	delete detecteur;
	delete liste_avion;

	return 0;
}
