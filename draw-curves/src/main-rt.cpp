
////////////////////////////////////////////////////////////
// Headers
////////////////////////////////////////////////////////////
#include <sstream>
#include <string>
#include <SFML/Audio.hpp>
#include <SFML/Graphics.hpp>

#include "SoundSystem.h"
#include <iomanip>
#include <iostream>
#include <cmath>
#include <cstdlib>
#include <cstdio>
#include <cstdint>
#include <getopt.h>

#include "Acquisition/RadioHackRF.hpp"


int main(int argc, char* argv[])
{
    std::cout << "(II) A little program developped by B. LE GAL for teaching purpose (" << __DATE__ << " " << __TIME__ << ")" << endl;
    std::cout << "(II) In converts a WAV/MP3/OGG file to a VHDL ROM for FPGA implementation" << endl;

    static struct option long_options[] = {
        {"freq_porteuse",   required_argument,   NULL, 'f'},  // pour changer la valeur min de la correlation (synchro)
        {"freq_aquisition", required_argument,   NULL, 'e'},        // pour changer le nombre de boucle Np (ie nbre echantillon*200000) // Np = 10 => 0.5 s
        {"buffer_length",   required_argument,   NULL, 'b'}, // a partir d'un fichier
        {"amp_enable",      required_argument,   NULL, 'a'}, // a partir d'un fichier
        {"antenna_enable",  required_argument,   NULL, 't'}, // a partir d'un fichier
        {"lna_gain",        required_argument,   NULL, 'l'}, // a partir d'un fichier
        {"vga_gain",        required_argument,   NULL, 'v'}, // a partir d'un fichier
        {NULL,              0,                   NULL, 0}
    };

    std::string mode_radio = "txt";
    std::string filename   = "../data/data_uhd.txt";

    double   freq_porteuse   = 105500000;
    double   freq_aquisition = 1048576;
    uint32_t buffer_length   = 65536;
    bool     amp_enable      = false;
    bool     antenna_enable  = false;
    uint32_t lna_gain        = 24;
    uint32_t vga_gain        = 40;

    int c;
    int option_index = 0;
    while ((c = getopt_long(argc, argv, "be:p:f:n:s:vt8",long_options, &option_index)) != -1) {
        int this_option_optind = optind ? optind : 1;
        switch (c) {
            case 'f':
                freq_porteuse = atof(optarg);
                break;
            case 'e' :
                freq_aquisition = atof(optarg);
                break;
            case 'b':
                buffer_length = atoi(optarg);
                break;
            case 'a':
                amp_enable = atoi(optarg);
                break;
            case 't':
                antenna_enable = atoi(optarg);
                break;
            case 'l':
                lna_gain = atoi(optarg);
                break;
            case 'v':
                vga_gain = atoi(optarg);
                break;
            case '?':
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
    cout << endl;


    std::cout << "######################################################"                            << endl;
    std::cout << "(II) double   freq_porteuse   = " << freq_porteuse                   << " Hz"      << endl;
    std::cout << "(II) double   freq_aquisition = " << freq_aquisition                 << " Hz"      << endl;
    std::cout << "(II) uint32_t buffer_length   = " << buffer_length                   << " Samples" << endl;
    std::cout << "(II) bool     amp_enable      = " << (amp_enable    ?"true":"false")               << endl;
    std::cout << "(II) bool     antenna_enable  = " << (antenna_enable?"true":"false")               << endl;
    std::cout << "(II) uint32_t lna_gain        = " << lna_gain                        << " dB"      << endl;
    std::cout << "(II) uint32_t vga_gain        = " << vga_gain                        << " dB"      << endl;
    std::cout << "######################################################"                            << endl;

    //
    // ON CHARGE LE FICHIER AUDIO DANS LES 2 BUFFERS
    //

    RadioHackRF rf(freq_porteuse, freq_aquisition);
    rf.initialize();

    rf.set_sample_rate   ( freq_aquisition  );
    rf.set_nb_samples    (   buffer_length  );
    rf.set_amp_enable    (   amp_enable     );
    rf.set_antenna_enable(   antenna_enable );
    rf.set_lna_gain      (      lna_gain    );
    rf.set_vga_gain      (      vga_gain    );


    std::vector<int16_t> vI;
    std::vector<int16_t> vQ;


    rf.reception(vI, vQ);

    //
    ////////////////////////////////////////////////
    //


    // on crée la fenêtre
    sf::RenderWindow window(sf::VideoMode(1280, 512), "Particles");

    // on crée un système de 1000 particules
    SoundSystem particles( vI );
    particles.update_ref ( vI );
    particles.update_mod ( vQ );

    // on crée un chrono pour mesurer le temps écoulé
    sf::Clock clock;

    bool pause   = true;
    bool oneShot = false;

    sf::Time t2 = sf::milliseconds(10);

    // on fait tourner la boucle principale
    while (window.isOpen())
    {
        // on gère les évènements
        sf::Event event;
        while (window.pollEvent(event))
        {
            if(event.type == sf::Event::Closed)
            {
                window.close();
            }

            else if (sf::Keyboard::isKeyPressed(sf::Keyboard::Left))
            {
                cout << "Stroke sf::Keyboard::Left" << endl;
                particles.slide_left();
            }

            else if (sf::Keyboard::isKeyPressed(sf::Keyboard::Right))
            {
                cout << "Stroke sf::Keyboard::Right" << endl;
                particles.slide_right();
            }

            else if (sf::Keyboard::isKeyPressed(sf::Keyboard::Up))
            {
                t2 += sf::milliseconds(10);
                cout << "Refresh latency is (" << t2.asMilliseconds() << " ms)" << endl;
            }

            else if (sf::Keyboard::isKeyPressed(sf::Keyboard::Down))
            {
                t2 -= sf::milliseconds(10);
                if( t2 < sf::milliseconds(10) )
                {
                    t2 = sf::milliseconds(10);
                }
                cout << "Refresh latency is (" << t2.asMilliseconds() << " ms)" << endl;
            }


            else if (sf::Keyboard::isKeyPressed(sf::Keyboard::A))
            {
                cout << "Stroke sf::Keyboard::A" << endl;
                rf.set_amp_enable( true );
            }
            else if (sf::Keyboard::isKeyPressed(sf::Keyboard::Z))
            {
                cout << "Stroke sf::Keyboard::Z" << endl;
                rf.set_amp_enable( false );
            }
            else if (sf::Keyboard::isKeyPressed(sf::Keyboard::Q))
            {
                cout << "Stroke sf::Keyboard::Q" << endl;
                rf.set_antenna_enable( true );
            }
            else if (sf::Keyboard::isKeyPressed(sf::Keyboard::S))
            {
                cout << "Stroke sf::Keyboard::S" << endl;
                rf.set_antenna_enable( false );
            }



            else if (sf::Keyboard::isKeyPressed(sf::Keyboard::O))
            {
                cout << "Stroke sf::Keyboard::O" << endl;
                int32_t lna = rf.get_lna_gain() - 8;
                lna = lna < 0 ? 0 : lna;
                rf.set_lna_gain(lna);
                oneShot = true;
                sf::sleep( sf::milliseconds(100) );
            }
            else if (sf::Keyboard::isKeyPressed(sf::Keyboard::P))
            {
                cout << "Stroke sf::Keyboard::P" << endl;
                int32_t lna = rf.get_lna_gain() + 8;
                lna = lna > 40 ? 40 : lna;
                rf.set_lna_gain(lna);
                oneShot = true;
                sf::sleep( sf::milliseconds(100) );
            }
            else if (sf::Keyboard::isKeyPressed(sf::Keyboard::L))
            {
                cout << "Stroke sf::Keyboard::L" << endl;
                int32_t vga = rf.get_vga_gain() - 2;
                vga = vga > 40 ? 40 : vga;
                rf.set_vga_gain(vga);
                oneShot = true;
                sf::sleep( sf::milliseconds(100) );
            }
            else if (sf::Keyboard::isKeyPressed(sf::Keyboard::M))
            {
                cout << "Stroke sf::Keyboard::M" << endl;
                int32_t vga = rf.get_vga_gain() + 2;
                vga = vga > 62 ? 62 : vga;
                rf.set_vga_gain(vga);
                oneShot = true;
                sf::sleep( sf::milliseconds(100) );
            }



            else if (sf::Keyboard::isKeyPressed(sf::Keyboard::Escape))
            {
                cout << "Stroke sf::Keyboard::Escape" << endl;
                return EXIT_SUCCESS;
            }

            else if (sf::Keyboard::isKeyPressed(sf::Keyboard::Return))
            {
                cout << "Stroke sf::Keyboard::Return" << endl;
                // On lance une aquisition de 256k echantillons
                // et on met a jour les buffers en meme temps
                pause = !pause;
                sf::sleep( sf::milliseconds(200) );

//                cout << "Refreshing the dataSet..." << endl;
//                rf.reception(vI, vQ);
//                particles.update_ref( vI );
//                particles.update_mod( vQ );

            }
            else if (sf::Keyboard::isKeyPressed(sf::Keyboard::Space))
            {
                cout << "Stroke sf::Keyboard::Space" << endl;
                // On lance une aquisition de 256k echantillons
                // et on met a jour les buffers en meme temps
                oneShot = true;
                sf::sleep( sf::milliseconds(200) );

            }

        }

        //
        // On relance une acquisition a partir de la radio seulement dans ces cas
        // de figure.
        //
        if( (pause == false) || (oneShot == true) )
        {
            rf.reception(vI, vQ);
            particles.update_ref( vI );
            particles.update_mod( vQ );
            oneShot = false;
        }

        // on le dessine
        window.clear();
        window.draw(particles);
        window.display();

//        if( (pause == false) || (oneShot == true) )
//        {
//            sf::Time t2 = sf::milliseconds(500);
//            sf::sleep( t2 );
//        }else{
            sf::sleep( t2 );
//        }
    }

    return EXIT_SUCCESS;
}
