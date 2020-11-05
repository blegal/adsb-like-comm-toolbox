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

#include "./PPM/Modulator/PPM_Modulator.hpp"
#include "./Sampling/Up/UpSampling.hpp"
#include "./IQ/Insertion/IQ_Insertion.hpp"

#include "./IQ/Removing/IQ_Removing.hpp"
#include "./Sampling/Down//DownSampling.hpp"
#include "./PPM/Demodulator/PPM_Demodulator.hpp"

#include "./Emitter/Radio/RadioHackRF.hpp"
#include "./Emitter/File/RadioFichierRAW.hpp"

#include "couleur.h"

template <class T>
void dump(std::vector<T>& v)
{
    for (uint32_t i = 0; i < v.size(); i += 1)
    {
        std::cout << (int32_t)v.at(i) << " ";
    }
    std::cout << std::endl;
}

using namespace std;

/*   ============================== MAIN =========================== */
/*
	4 ech = 1 symb
	1 trame = 120 symb = 480 ech
*/
int main(int argc, char* argv[])
{
	int c; //getopt

    float fc = 433000000;
    float fe = 1000000;

	static struct option long_options[] =
	{
		{"radio",   required_argument,   NULL, 'r'}, // a partir d'un fichier
		{"file",    required_argument,   NULL, 'f'}, // a partir d'un fichier

		{"fc",      required_argument,   NULL, 'p'}, // changer la frequence de la porteuse
		{"fe",      required_argument,   NULL, 'e'}, // changer la frequence echantillonnage
		{NULL,      0,                   NULL, 0}
	};

    std::string mode_radio = "radio";
    std::string filename   = "hackrf";

	int option_index = 0;

	std::vector<int8_t> buffer(200000); // Notre buffer à nous dans le programme

    cout << "par Bertrand LE GAL - Octobre 2020" << endl;
	cout << "==================================== ADSB ====================================" << endl;
	// ============== GETOPT ================
	printf("%s",KRED);

	while ((c = getopt_long(argc, argv, "be:p:f:n:s:vt8",long_options, &option_index)) != -1) {
		//int this_option_optind = optind ? optind : 1;
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

	//
	// We create the frame
	//
    Frame f( 16 );

    //
    // We fill the frame content
    //
    for( uint32_t i = 0; i < 16; i +=1 )
    f.data(i, i);
    f.compute_crc();

    //
    // We show the frame content
    //
    f.dump_frame();

    /////////////////


    std::vector<uint8_t> buff_1(8 + 8 * (2 + 16 + 4));
    f.get_frame_bits( buff_1 );

//    std::cout << "Transmitted bits" << std::endl;
//    dump( buff_1 );

    PPM_Modulator ppm( 120 );
    std::vector<int8_t> buff_2(8 + 8 * (2 + 16 + 4));
    ppm.execute(buff_1, buff_2);

//    std::cout << "Modulated bits" << std::endl;
//    dump( buff_2 );

    UpSampling up(2);
    std::vector<int8_t> buff_3;
    up.execute( buff_2, buff_3 );

//    std::cout << "UpSampled bits" << std::endl;
//    dump( buff_3 );

    IQ_Insertion iqi;
    std::vector<int8_t> buff_4;
    iqi.execute( buff_3, buff_4 );

    // Inverse process

    IQ_Removing iqr;
    std::vector<int8_t> buff_5;
    iqr.execute( buff_4, buff_5 );

    DownSampling down(2);
    std::vector<int8_t> buff_6;
    down.execute( buff_5, buff_6 );

    PPM_Demodulator ppd;
    std::vector<uint8_t> buff_7(8 + 8 * (2 + 16 + 4));
    ppd.execute(buff_6, buff_7);

    Frame g( 16 );
    g.fill_frame_bits( buff_7 );
    g.dump_frame();

#if 1
    RadioHackRF* radio = nullptr;
    if( mode_radio == "radio" && filename == "hackrf" )
    {
        radio = new RadioHackRF(fc, fe);
    }
#else
    RadioFichierRAW* radio = nullptr;
    if( mode_radio == "file" )
    {
        radio = new RadioFichierRAW( filename );
    }
#endif
    else
    {
        cout << "oups !" << endl;
        cout << "mode_radio = " << mode_radio << endl;
        cout << "filename   = " << filename   << endl;
        exit( -1 );
    }

    radio->initialize();
    radio->start_engine();

    usleep( 1000000 );

    radio->set_txvga_gain( 40 );

    for(int k = 0; k < 32; k+=1)
    {
        Frame f( 16 );

        for( uint32_t i = 0; i < 16; i +=1 )
            f.data(i, i+k);

        f.compute_crc();
        f.dump_frame();

        std::vector<uint8_t> buff_1(8 + 8 * (2 + 16 + 4));
        f.get_frame_bits( buff_1 );

        PPM_Modulator ppm( 120 );
        std::vector<int8_t> buff_2(8 + 8 * (2 + 16 + 4));
        ppm.execute(buff_1, buff_2);

        UpSampling up(2);
        std::vector<int8_t> buff_3;
        up.execute( buff_2, buff_3 );

        IQ_Insertion iqi;
        std::vector<int8_t> buff_4;
        iqi.execute( buff_3, buff_4 );

        usleep( 1000000 );
        radio->emission(buff_4);
    }

    usleep( 1000000 );

    auto start = chrono::high_resolution_clock::now();

    radio->stop_engine();
    radio->close();

    delete radio;

    exit( 0 );

//    uint8_t cnt = 0;
	while( true )
	{
//		auto np1 = chrono::high_resolution_clock::now();

//		f.set_payload( cnt++, 0); // On ajoute un indicateur dans la trame

		//
		// On recupere les données depuis la source
		//
        radio->emission(buffer);

	}


	// =============== AFFICHAGE FINAL =====================
	printf("\n================================================================\n");

	auto end = chrono::high_resolution_clock::now();


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
