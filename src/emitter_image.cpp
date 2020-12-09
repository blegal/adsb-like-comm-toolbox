#include <iostream>
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

#include "./Frame/Frame.hpp"

#include "./Tools/BMP.hpp"
#include "Tools/Parameters/Parameters.hpp"

#include "./Processing/PPM/Modulator/PPM_Modulator.hpp"
#include "./Processing/Sampling/Up/UpSampling.hpp"
#include "./Processing/IQ/Insertion/IQ_Insertion.hpp"

#include "./Radio/Emitter/Library/EmitterLibrary.hpp"

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
    param.set("bmp_file",   "image.bmp");

    param.set("fc",      433000000.0);
    param.set("fe",        1000000.0);
    param.set("fe_real",   1000000.0);

    param.set("surEch",     1);
    param.set("tx_gain",   24);
    param.set("antenna",    1);
    param.set("amplifier",  0);

    param.set("payload", 16);

    param.set("sleep_time",   100000);

    param.set("verbose",   false);

    param.set("max_frames",   1000000);

    param.set("crystal_correct",   0);

    static struct option long_options[] =
            {
                    {"radio",    required_argument, NULL, 'r'}, // a partir d'un fichier
                    {"file",     required_argument, NULL, 'f'}, // a partir d'un fichier

                    {"fc",       required_argument, NULL, 'c'}, // changer la frequence de la porteuse
                    {"fe",       required_argument, NULL, 'e'}, // changer la frequence echantillonnage

                    {"payload",     required_argument, NULL, 'p'}, // changer la frequence de la porteuse
                    {"bmp_file",    required_argument, NULL, 'b'}, // changer la frequence de la porteuse

                    {"verbose",           no_argument, NULL, 'v'}, // changer la frequence de la porteuse
                    {"sleep",       required_argument, NULL, 's'}, // changer la frequence echantillonnage
                    {"payload",     required_argument, NULL, 'p'}, // changer la frequence de la porteuse
                    {"tx_gain",     required_argument, NULL, 'g'}, // changer la frequence echantillonnage
                    {"up_sampling", required_argument, NULL, 'U'}, // changer la frequence echantillonnage

                    {"max_frames",  required_argument, NULL, 'm'}, // changer la frequence echantillonnage
                    {"ppm",  required_argument, NULL, 'P'}, // changer la frequence echantillonnage

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
                param.set("fc",   std::stod(optarg));
                printf("%soption fc = %f Hz%s\n", KNRM, param.toFloat("fc"), KRED);
                break;

            case 'e' :
                param.set("fe",   std::stod(optarg));
                param.set("fe_real",  param.toDouble("surEch") * param.toDouble("fe"));
//                printf("%soption fe = %f Hz%s\n", KNRM, param.toFloat("fe"), KRED);
                break;

            case 'U' :
                param.set("surEch",   std::atoi(optarg));
                param.set("fe_real",  param.toDouble("surEch") * param.toDouble("fe"));
                break;

            case '?':
                break;

            case 'r':
                param.set("mode_radio",   "radio");
                param.set("filename",   optarg);
                break;

            case 'b':
                param.set("bmp_file",   optarg);
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
                param.set("payload",   std::atoi(optarg));
                printf("%soption payload = %d%s\n", KNRM, param.toInt("payload"), KRED);
                break;

            case 'm' :
                param.set("max_frames",   std::atoi(optarg));
                printf("%soption max_frames = %d%s\n", KNRM, param.toInt("max_frames"), KRED);
                break;

            case 's' :
                param.set("sleep_time",   std::atoi(optarg));
                printf("%soption sleep = %d us%s\n", KNRM, param.toInt("sleep_time"), KRED);
                break;

            case 'g' :
                param.set("tx_gain",   std::atoi(optarg));
                printf("%soption tx_gain = %d dB%s\n", KNRM, param.toInt("tx_gain"), KRED);
                break;

            case 'P' :
                param.set("crystal_correct",   std::atoi(optarg));
                printf("%soption crystal_correct = %d dB%s\n", KNRM, param.toInt("crystal_correct"), KRED);
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
    // On selectionne le module d'emission en fonction des choix de l'utilisateur
    //
    Emitter*   radio = EmitterLibrary::allocate( param );

    radio->initialize();
    radio->start_engine();
    radio->set_txvga_gain( param.toInt("tx_gain") );
    usleep( param.toInt("sleep_time") );


    //
    // On cree les modules qui vont nous être utile pour réaliser la communication
    //

    Frame f( param.toInt("payload") );
    PPM_Modulator ppm( 120 ); // niveau de valeur min-max supporté par la hackrf
    UpSampling up( 2 * param.toInt("surEch") ); // 2 necessaire pour le recepteur x fois pour le DAC
    IQ_Insertion iqi;


    //
    // On cree les buffers que lesquels les differents processing vont etre appliqués
    //

    std::vector<uint8_t> buff_1( f.frame_bits() );
    std::vector<int8_t>  buff_2( f.frame_bits() );
    std::vector<int8_t>  buff_3( 2 * f.frame_bits() );
    std::vector<int8_t>  buff_4( 4 * f.frame_bits() );

    radio->emission ( buff_4 ); // pour demarrer le bouzin !

    //
    // On affiche les informations dans le terminal afin de simplifier le replay
    //

    const uint32_t sleep_time = param.toInt("sleep_time");
    const uint32_t payload    = param.toInt("payload");
    const uint32_t verbose    = param.toInt("verbose");

    printf("(II) Launching the emitter application :\n");
    printf("(II) -> Modulation frequency    : %4d MHz\n",    (uint32_t)(param.toDouble("fc"     )/1000000.0));
    printf("(II) -> Symbol sampling freq.   : %4d MHz\n",    (uint32_t)(param.toDouble("fe"     )/1000000.0));
    printf("(II) -> Real sampling frequency : %4d MHz\n",    (uint32_t)(param.toDouble("fe_real")/1000000.0));
    printf("(II) -> Sampling factor for DAC : %2dx\n",       param.toInt("surEch"));
    printf("(II)\n");

    const int32_t crystal_correct_ppm = param.toInt("crystal_correct");
    if( crystal_correct_ppm != 0 )
    {
        double freq_hz        = param.toDouble("fc");
        double sample_rate_hz = param.toDouble("fe");

        sample_rate_hz = (uint32_t)((double)sample_rate_hz * (1000000.0 - crystal_correct_ppm)/1000000.0+0.5);
        freq_hz        = freq_hz * (1000000.0 - crystal_correct_ppm)/1000000.0;

        double real_rate_hz = param.toDouble("surEch") * sample_rate_hz;

        param.set("fc",           freq_hz);
        param.set("fe",    sample_rate_hz);
        param.set("fe_real", real_rate_hz);

        printf("(II) -> Corrected modulation frequency    : %4d MHz\n",    (uint32_t)(param.toDouble("fc"     )/1000000.0));
        printf("(II) -> Corrected symbol sampling freq.   : %4d MHz\n",    (uint32_t)(param.toDouble("fe"     )/1000000.0));
        printf("(II) -> Corrected real sampling frequency : %4d MHz\n",    (uint32_t)(param.toDouble("fe_real")/1000000.0));
        printf("(II)\n");
    }

    printf("(II) ADSB-like configuration parameters :\n");
    printf("(II) -> ADSB-like payload length  : %d bytes\n", f.payload_size());
    printf("(II) -> ADSB-like frame length    : %d bits\n",  f.frame_bits());
    printf("(II) -> Time delay between frames : %d us\n",    param.toInt("sleep_time"));
    printf("(II)\n");
    printf("(II) HackRF module configuration :\n");
    printf("(II) -> VGA transmitter gain value : %d\n",      param.toInt("tx_gain"));
    printf("(II) -> VGA transmitter gain value : %d\n",      param.toInt("tx_gain"));
    printf("(II) -> HackRF antenna parameter   : disable\n" );
    printf("(II) -> HackRF amplifier parameter : disable\n");
    printf("(II)\n");


    //
    // On ouvre l'image que l'utilisateur souhaite transmettre et on affiche ses propriétés
    //
    BMP bmp( param.toString("bmp_file") );
    printf("(II) Properties of the picture :\n");
    printf("(II) -> Picture filename           : %s\n",      param.toString("bmp_file").c_str());
    printf("(II) -> Picture size               : %dx%d\n",   bmp.bmp_info_header.width, bmp.bmp_info_header.height);
    printf("(II) -> #bits per pixel            : %d\n",      bmp.bmp_info_header.bit_count );
    printf("(II) -> Picture size in bytes      : %d\n",      (bmp.bmp_info_header.width * bmp.bmp_info_header.height) * (bmp.bmp_info_header.bit_count/8));
    printf("(II) -> #frames per picture line   : %d\n",      (bmp.bmp_info_header.width * (bmp.bmp_info_header.bit_count/8)/payload) );



    //
    // On lance le processus de communication
    //

    auto start = std::chrono::system_clock::now(); // This and "end"'s type is std::chrono::time_point

    uint32_t curr_x  = 0;
    uint32_t curr_y  = 0;
    uint32_t curr_s  = 0;
    uint32_t nFrames = 0;

    const uint32_t nBytesPerPixel = (bmp.bmp_info_header.bit_count / 8);
    const uint32_t nBytesPerLine  = (bmp.bmp_info_header.width * nBytesPerPixel);

    while( isFinished == false )
    {
        usleep( sleep_time );

        //
        //  Il s'agit du debut d'une image. Dans ce cas, on transmet le paquet correspondant
        //  avec comme payload les dimensions de l'image.
        //
        if( curr_s == 0 )
        {
            f.set_type(FRAME_NEW_IMAGE);
            f.data_u32(0, bmp.bmp_info_header.width);
            f.data_u32(1, bmp.bmp_info_header.height);
            curr_s = 1;

        }
        else if( curr_s == 1 )  // On envoie un tag debut de ligne avec la valeur de Y
        {
            f.set_type(FRAME_NEW_LINE);
            f.data_u32(0, curr_y);
            curr_s = 2;
        }
        else if( curr_s == 2 )  // On envoie l'ensemble des pixels de la ligne (ou mettre la valeur de X ?)
        {
            f.set_type(FRAME_INFOS);

            const uint8_t* ptr = bmp.data.data() + curr_y * nBytesPerLine + curr_x * nBytesPerPixel;

            for( uint32_t i = 0; i < payload; i +=1 )
                f.data(i, ptr[i]);

            curr_x += (payload / 3);    // on avance dans la ligne

            if( curr_x >=  bmp.bmp_info_header.width )
            {
                curr_x  = 0;
                curr_s  = 3;
            }
            else
            {
                curr_s = 2;     // On continue a transmettre la ligne en cours
            }
        }
        else if( curr_s == 3 )  // On envoie un tag de fin de ligne avec la valeur de Y
        {
            f.set_type(FRAME_END_LINE);
            f.data_u32(0, curr_y);
            curr_y += 1;
            if( curr_y == bmp.bmp_info_header.height )
                curr_s  = 4;    // il est temps de cloturer la transmission !
            else
                curr_s  = 1;    // on repart sur une sequence new line...
        }
        else if( curr_s == 4 )  // On informe le recepteur que la reception de l'image est terminée
        {
            f.set_type(FRAME_END_IMAGE);
            f.data_u32(0, bmp.bmp_info_header.width);
            f.data_u32(1, bmp.bmp_info_header.height);
            curr_s     = 5;
            isFinished = true;
        }
        else
        {
            printf("(EE) Jamais nous n'aurions du arriver ici... ( curr_s == %d )\n", curr_s);
            exit( -1 );
        }

        f.compute_crc();

        if( verbose == true )
        {
            f.dump_frame();
        }

        f.get_frame_bits( buff_1 );
        ppm.execute     ( buff_1, buff_2 );
        up.execute      ( buff_2, buff_3 );
        iqi.execute     ( buff_3, buff_4 );
        radio->emission ( buff_4 );

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
