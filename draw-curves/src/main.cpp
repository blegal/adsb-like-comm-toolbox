
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


#define abs(x) ((x<0?(-x):(x)))

////////////////////////////////////////////////////////////
/// Play a sound
///
////////////////////////////////////////////////////////////


void histogram(short *in, short *out, int n)
{
    int hist[65536];
    for (int i = 0; i < n; i++)
    {
        out[i] = 0;
    }
    for (int i = 0; i < n; i++)
    {
        hist[ 32768 + in[i] ] += 1;
    }
    for (int i = 0; i < 65536; i++)
    {
        out[i] = 32767.0 * ((float)hist[ i ] / (float)n);
    }
}


int main(int argc, char* argv[])
{
    std::cout << "(II) A little program developped by B. LE GAL for teaching purpose (" << __DATE__ << " " << __TIME__ << ")" << endl;
    std::cout << "(II) In converts a WAV/MP3/OGG file to a VHDL ROM for FPGA implementation" << endl;

    std::string filename = "./resources/canary.wav";
    if (argc == 2)
    {
        filename = argv[1];
    }

    unsigned int frequence =  44100;
    unsigned int nb_bits   =      9;
    unsigned int length    = 262144;
    bool noise             =  false;

    //
    // ON CHARGE LE FICHIER AUDIO DANS LES 2 BUFFERS
    //
    FILE* stream = fopen( filename.c_str(), "r" );
    if( stream == NULL )
    {
        printf("Erreur lors de l'ouverture du fichier (%s)\n", filename.c_str());
        exit( -1 );
    }
    float vmin = +10000000;
    float vmax = -10000000;

    std::vector<int16_t> vI;
    std::vector<int16_t> vQ;

    int8_t   buff[4096];
    uint32_t nElements = 1;
    while ( nElements != 0 ) {
        nElements = fread(buff, 1, 4096, stream);
        for(int q=0; q<nElements; q+=2)
        {
            const int16_t r1 = (int16_t)buff[q  ];
            const int16_t r2 = (int16_t)buff[q+1];
            vI.push_back( 1 * r1 );
            vQ.push_back( 1 * r2 );
        }
    }
    for(int q=0; q<vI.size(); q+=1)
    {
        vmin = vmin < vI[q] ? vmin : vI[q];
        vmax = vmax > vI[q] ? vmax : vI[q];
    }
    printf("vmin = %f\n", vmin);
    printf("vmax = %f\n", vmax);
    fclose(stream);
    //
    ////////////////////////////////////////////////
    //

//    RawSound buff_1( &buffer1 );
//    RawSound buff_2( &buffer2 );

//    std::cout << "#################################################"     << endl;
//    std::cout << "(II) Audio file frequency  : " << buff_1.sample_rate() << endl;
//    std::cout << "(II) Audio file channels   : " << buff_1.channels()    << endl;
//    std::cout << "(II) Audio file length     : " << buff_1.length()      << endl;
//    std::cout << "(II) Audio file length (s) : " << ((float)buff_1.length() / (float)buff_1.sample_rate()) << endl;
//    std::cout << "#################################################"     << endl;

    // on crée la fenêtre
    sf::RenderWindow window(sf::VideoMode(1280, 512), "Particles");

    // on crée un système de 1000 particules
    SoundSystem particles( vI );
    particles.update_ref ( vI );
    particles.update_mod ( vQ );

    // on crée un chrono pour mesurer le temps écoulé
    sf::Clock clock;


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
                particles.slide_left();
            }

            else if (sf::Keyboard::isKeyPressed(sf::Keyboard::Right))
            {
                particles.slide_right();
            }

            else if (sf::Keyboard::isKeyPressed(sf::Keyboard::Up))
            {
//                particles.slide_right();
            }

            else if (sf::Keyboard::isKeyPressed(sf::Keyboard::Down))
            {
//                particles.slide_right();
            }

            else if (sf::Keyboard::isKeyPressed(sf::Keyboard::Return))
            {
                // On lance une aquisition de 256k echantillons
                // et on met a jour les buffers en meme temps

//                buff_1.fill         ( &buff_2 );
//                particles.update_ref( &buff_1 );
            }

            else if (sf::Keyboard::isKeyPressed(sf::Keyboard::Q))
            {
                return EXIT_SUCCESS;
            }
        }

        // on le dessine
        window.clear();
        window.draw(particles);
        window.display();

        sf::Time t2 = sf::milliseconds(100);
        sf::sleep( t2 );
    }

    return EXIT_SUCCESS;
}
