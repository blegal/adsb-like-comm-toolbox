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
#include <signal.h>
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>

#include "./Frame/Frame.hpp"

#include "./Tools/Parameters.hpp"

#include "./PPM/Modulator/PPM_Modulator.hpp"
#include "./Sampling/Up/UpSampling.hpp"
#include "./IQ/Insertion/IQ_Insertion.hpp"

#include "./IQ/Removing/IQ_Removing.hpp"
#include "./Sampling/Down//DownSampling.hpp"
#include "./PPM/Demodulator/PPM_Demodulator.hpp"

#include "./Emitter/Radio/EmitterHackRF.hpp"
#include "./Emitter/File/RadioFichierRAW.hpp"

#include "couleur.h"


bool isFinished = false;

void my_ctrl_c_handler(int s){
    if( isFinished == true )
    {
        exit( -1 );
    }
    isFinished = true;
}



using namespace std;

/*   ============================== MAIN =========================== */
/*
	4 ech = 1 symb
	1 trame = 120 symb = 480 ech
*/
int main(int argc, char* argv[])
{
    //
    //  On gere manuellement le CTRL-C afin de quitter proprement le programme
    //  apres avoir eteint la radio logicielle...
    //

    struct sigaction sigIntHandler;
    sigIntHandler.sa_handler = my_ctrl_c_handler;
    sigemptyset(&sigIntHandler.sa_mask);
    sigIntHandler.sa_flags = 0;
    sigaction(SIGINT, &sigIntHandler, NULL);

    int c; //getopt

    Parameters param;

    param.set("mode_radio",   "radio");
    param.set("filename",   "hackrf");

    param.set("fc", 433000000.0f);
    param.set("fe",   1000000.0f);
    param.set("tx_gain",   40);
    param.set("antenna",    1);
    param.set("amplifier",  0);

    param.set("payload", 16);

    param.set("sleep_time",   100000);

    param.set("verbose",   false);

    param.set("max_frames",   1000000);


    static struct option long_options[] =
            {
                    {"radio",    required_argument, NULL, 'r'}, // a partir d'un fichier
                    {"file",     required_argument, NULL, 'f'}, // a partir d'un fichier

                    {"fc",       required_argument, NULL, 'c'}, // changer la frequence de la porteuse
                    {"fe",       required_argument, NULL, 'e'}, // changer la frequence echantillonnage

                    {"verbose",  no_argument, NULL, 'v'}, // changer la frequence de la porteuse
                    {"sleep",    required_argument, NULL, 's'}, // changer la frequence echantillonnage
                    {"payload",  required_argument, NULL, 'p'}, // changer la frequence de la porteuse
                    {"tx_gain",  required_argument, NULL, 'g'}, // changer la frequence echantillonnage

                    {"max_frames",  required_argument, NULL, 'm'}, // changer la frequence echantillonnage

                    {NULL, 0,                    NULL, 0}
            };


    int option_index = 0;

    std::vector<int8_t> buffer(200000); // Notre buffer à nous dans le programme

    cout << "par Bertrand LE GAL - Octobre 2020" << endl;
    cout << "==================================== ADSB ====================================" << endl;
    // ============== GETOPT ================
    printf("%s", KRED);

    while ((c = getopt_long(argc, argv, "be:p:f:n:s:vt8", long_options, &option_index)) != -1) {
        //int this_option_optind = optind ? optind : 1;
        switch (c) {
            case 0:
                printf("%soption %s%s", long_options[option_index].name, KNRM, KRED);
                if (optarg)
                    printf("%s with arg %s%s", optarg, KNRM, KRED);
                printf("\n");
                break;

            case 'c':
                param.set("fc",   atof(optarg));
                printf("%soption fc = %f Hz%s\n", KNRM, param.toFloat("fc"), KRED);
                break;

            case 'e' :
                param.set("fe",   atof(optarg));
                printf("%soption fe = %f Hz%s\n", KNRM, param.toFloat("fe"), KRED);
                break;

            case '?':
                break;

            case 'r':
                param.set("mode_radio",   "radio");
                param.set("filename",   optarg);
                break;

            case 'f':
                param.set("mode_radio",   "file");
                param.set("filename",   optarg);
                break;

            case 'v' :
                param.set("verbose",   1);
                printf("%soption verbose = 1%s\n", KNRM, KRED);
                break;

            case 'p' :
                param.set("payload",   atoi(optarg));
                printf("%soption payload = %d%s\n", KNRM, param.toInt("payload"), KRED);
                break;

            case 'm' :
                param.set("max_frames",   atoi(optarg));
                printf("%soption max_frames = %d%s\n", KNRM, param.toInt("max_frames"), KRED);
                break;

            case 's' :
                param.set("sleep_time",   atoi(optarg));
                printf("%soption sleep = %d us%s\n", KNRM, param.toInt("sleep_time"), KRED);
                break;

            case 'g' :
                param.set("tx_gain",   atoi(optarg));
                printf("%soption tx_gain = %d dB%s\n", KNRM, param.toInt("tx_gain"), KRED);
                break;

            default:
                printf("?? getopt returned character code 0%o ??\n", c);
        }
    }
    if (optind < argc) {
        printf("non-option ARGV-elements: ");
        while (optind < argc)
            printf("%s\n", argv[optind++]);
    }
    printf("%s", KNRM);
    cout << endl;

    //
    // We create the frame
    //
    if( 0 )
    {
        const uint32_t payload    = param.toInt("payload");

        Frame f(payload);

        //
        // We fill the frame content
        //
        for (uint32_t i = 0; i < payload; i += 1)
            f.data(i, i);
        f.compute_crc();

        //
        // We show the frame content
        //
        f.dump_frame();

        /////////////////


        std::vector<uint8_t> buff_1(8 + 8 * (2 + 16 + 4));
        f.get_frame_bits(buff_1);

    //    std::cout << "Transmitted bits" << std::endl;
    //    dump( buff_1 );

        PPM_Modulator ppm(120);
        std::vector<int8_t> buff_2(8 + 8 * (2 + 16 + 4));
        ppm.execute(buff_1, buff_2);

    //    std::cout << "Modulated bits" << std::endl;
    //    dump( buff_2 );

        UpSampling up(2);
        std::vector<int8_t> buff_3;
        up.execute(buff_2, buff_3);

    //    std::cout << "UpSampled bits" << std::endl;
    //    dump( buff_3 );

        IQ_Insertion iqi;
        std::vector<int8_t> buff_4;
        iqi.execute(buff_3, buff_4);

        // Inverse process

        IQ_Removing iqr;
        std::vector<int8_t> buff_5;
        iqr.execute(buff_4, buff_5);

        DownSampling down(2);
        std::vector<int8_t> buff_6;
        down.execute(buff_5, buff_6);

        PPM_Demodulator ppd;
        std::vector<uint8_t> buff_7(8 + 8 * (2 + 16 + 4));
        ppd.execute(buff_6, buff_7);

        Frame g(payload);
        g.fill_frame_bits(buff_7);
        g.dump_frame();
    }


    Emitter*   radio = nullptr;
    if( param.toString("mode_radio") == "radio" && param.toString("filename") == "hackrf" )
    {
        radio = new EmitterHackRF(param.toFloat("fc"), param.toFloat("fe"));
    }
    else if( param.toString("mode_radio") == "file" )
    {
        radio = new EmitterFichierRAW( param.toString("filename") );
    }
    else
    {
        cout << "oups !" << endl;
        cout << "mode_radio = " << param.toString("mode_radio") << endl;
        cout << "filename   = " << param.toString("filename")   << endl;
        exit( -1 );
    }

    radio->initialize();
    radio->start_engine();
    radio->set_txvga_gain( param.toInt("tx_gain") );

    usleep( param.toInt("sleep_time") );


    Frame f( param.toInt("payload") );
    PPM_Modulator ppm( 120 );
    UpSampling up(2);
    IQ_Insertion iqi;

    std::vector<uint8_t> buff_1(8 + 8 * (2 + 16 + 4));
    std::vector<int8_t>  buff_2(8 + 8 * (2 + 16 + 4));
    std::vector<int8_t>  buff_3;
    std::vector<int8_t>  buff_4;

    uint32_t nFrames = 0;

    auto start = std::chrono::system_clock::now(); // This and "end"'s type is std::chrono::time_point

    const uint32_t sleep_time = param.toInt("sleep_time");
    const uint32_t payload    = param.toInt("payload");
    const uint32_t verbose    = param.toInt("verbose");

    while( isFinished == false )
    {
        usleep( sleep_time );

        for( uint32_t i = 0; i < payload; i +=1 )
            f.data(i, i + nFrames);

        f.compute_crc();

        if( verbose == true )
        {
            f.dump_frame();
        }

        f.get_frame_bits( buff_1 );

        ppm.execute(buff_1, buff_2);

        up.execute( buff_2, buff_3 );

        iqi.execute( buff_3, buff_4 );

        radio->emission(buff_4);

        nFrames += 1;

        //
        // On gere le critere d'arret associé aux nombre MAXIMUM de trames à emettre
        //
        if( nFrames == param.toInt("max_frames") )
            isFinished = true;
    }

    auto end = std::chrono::system_clock::now();
    std::chrono::duration<double> elapsed = end - start;

    std::cout << std::endl;
    std::cout << "Nombre de trames emises  (frames)  = " << nFrames << std::endl;
    std::cout << "Temps total d'émission   (seconds) = " << elapsed.count() << std::endl;
    std::cout << "Trames par seconde       (frames)  = " << (nFrames/elapsed.count()) << std::endl;
    std::cout << "Débit emis par seconde   (bits)    = " << (nFrames/elapsed.count()*f.frame_bits()) << std::endl;
    std::cout << "Débit utile par seconde  (bytes)   = " << (nFrames/elapsed.count()*payload) << std::endl;
    std::cout << "Débit utile par seconde  (bits)    = " << (nFrames/elapsed.count()*payload*8) << std::endl;

    radio->stop_engine();
    radio->close();

    delete radio;

	return 0;
}
