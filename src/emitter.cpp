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

#include "./Frame/Frame.hpp"
#include "./Emitter/Radio/RadioHackRF.hpp"

#include "couleur.h"

using namespace std;

/*   ============================== MAIN =========================== */
/*
	4 ech = 1 symb
	1 trame = 120 symb = 480 ech
*/
int main(int argc, char* argv[])
{

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
		{"radio",   required_argument,   NULL, 'r'}, // a partir d'un fichier
		{"file",    required_argument,   NULL, 'f'}, // a partir d'un fichier

		{"fc",      required_argument,   NULL, 'p'}, // changer la frequence de la porteuse
		{"fe",      required_argument,   NULL, 'e'}, // changer la frequence echantillonnage
		{NULL,      0,                   NULL, 0}
	};

    std::string mode_radio = "txt";
    std::string filename   = "../data/data_uhd.txt";


	int option_index = 0;

	std::vector<int8_t> buffer(200000); // Notre buffer à nous dans le programme

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

            case '?':
                break;

            case 'r':
                mode_radio = "radio";
                filename   = optarg;
                break;

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
	    printf ("%s\n", argv[optind++]);
	}
	printf("%s",KNRM);
	cout << endl;


    RadioHackRF* radio;
    if( mode_radio == "radio" && filename == "hackrf" )
    {
        radio = new RadioHackRF(fc, fe);
    }
    else if( mode_radio == "file" && filename == "hackrf" )
    {
        radio = new RadioHackRF(fc, fe);
    }
    else
    {
        cout << "oups !" << endl;
        cout << "mode_radio = " << mode_radio << endl;
        cout << "filename   = " << filename   << endl;
        exit( -1 );
    }

    radio->initialize();

	Frame f( 128 );

    auto start = chrono::high_resolution_clock::now();

	uint8_t cnt = 0;
	while( true )
	{
		auto np1 = chrono::high_resolution_clock::now();

		f.set_payload( cnt++, 0); // On ajoute un indicateur dans la trame

		//
		// On recupere les données depuis la source
		//
        radio->emission(buffer);

	}


	// =============== AFFICHAGE FINAL =====================
	printf("\n================================================================\n");

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

	delete radio;

	return 0;
}
