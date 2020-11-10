#include <curses.h>
#include <unistd.h>

#include <cstdio>
#include <cstdlib>

#include <iostream>
#include <fstream>
#include <vector>
#include <algorithm>
#include <ctime>

#include "./Frame/Frame.hpp"


int main(int argc, char *argv[]) {

    std::cout << "(II) A little program developped by B. LE GAL for teaching purpose (" << __DATE__ << " " << __TIME__ << ")" << std::endl;
    std::cout << "(II) This interface enable to configure HackRF modules to send ADSB-like frames..." << std::endl;


    ////////////////////////////////////////////////////////////////////////////////////////////////////////////
// hackrf_transfer -t ~/Dropbox/MATLAB/SinusGenerator/QPSK-A/QPSK.cosinus.stream.raw -f 433000000 -p 1 -a 1 -s 1000000 -R -x 32

    std::string id = "000000000000000026b468dc33776d8f";

    uint32_t porteuse_rate_hz = 433000000;
    uint32_t sample_rate_hz   =   1000000;
    uint32_t FREQ_ONE_MHZ     =   1000000;
    uint32_t tx_vga           =        32;
    uint32_t antenna          =         1;

    std::string filename = "frame_set.txt";
    FILE* stream = fopen( filename.c_str(), "w" );
    if( stream == NULL )
    {
        printf("Erreur lors de l'ouverture du fichier (%s)\n", filename.c_str());
        exit( -1 );
    }

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////

    int parent_x, parent_y, new_x, new_y;
    int score_size = 5;
    int key = ERR;

    initscr();
    noecho();
    curs_set(FALSE);
    keypad(stdscr, TRUE);

    // set up initial windows
    getmaxyx(stdscr, parent_y, parent_x);

    WINDOW *field = newwin(parent_y - score_size, parent_x, 0, 0);
    WINDOW *score = newwin(score_size, parent_x, parent_y - score_size, 0);

    box(field, 0, 0);
    box(score, 0, 0);


    const float scale_x = 256.0f / parent_x;
    const float scale_y = 100.0f / (parent_y - 7);

//    histo.resize(parent_x - 2, parent_y - 7);

    std::vector<std::string> msg;
    for(uint32_t i = 0; i < (parent_y - 7); i += 1 )
    {
        msg.push_back( "Le message " + std::to_string(i) );
    }


//    nodelay(stdscr, TRUE);

    // 138 / 43

    int k = 0;

    Frame f( 16 );  // On cree la trame adsb

    bool init = true;

    timeout( 1 );

    while(key != 'q') {

        if (key == KEY_RESIZE) {
#ifdef PDCURSES
      resize_term(0, 0);
#endif
            getmaxyx(stdscr, new_y, new_x);

            if (new_y != parent_y || new_x != parent_x) {
                parent_x = new_x;
                parent_y = new_y;

                wresize(field, new_y - score_size, new_x);
                wresize(score, score_size, new_x);
                mvwin(score, new_y - score_size, 0);

                wclear(stdscr);
                wclear(field);
                wclear(score);

                box(field, 0, 0);
                box(score, 0, 0);

                const uint32_t tVerticale = parent_y - 7;
                if( msg.size() > tVerticale )
                {
                    msg.resize(tVerticale);
                }else{
                    for(uint32_t i = msg.size(); i < tVerticale; i += 1)
                        msg.push_back("new value...");
                }
            }
        }

        bool modif_param = false;
        if (key == KEY_UP   ) { tx_vga     += 1;     modif_param = true; }
        if (key == KEY_DOWN ) { tx_vga     -= 1;     modif_param = true; }
        if (key == KEY_LEFT ) { antenna     = false; modif_param = true; }
        if (key == KEY_RIGHT) { antenna     = true;  modif_param = true; }

        //
        //
        //

        for( uint32_t i = 0; i < 16; i +=1 )
            f.data(i, i + k);
        k += 1;
        f.compute_crc();

        msg.push_back( f.to_string() );
        msg.erase    ( msg.begin()   );

        //
        //
        //

        usleep( 1000000 );

        wrefresh(stdscr);

        //
        // On rafraichi la partie basse du terminal lorsque les données ont changées...
        //
        if( modif_param == true || init == true )
        {
            mvwprintw(score, 1, 1, "HackRF configuration parameters for data transfer (device id = %s)", id.c_str() );
            mvwprintw(score, 2, 1, "Frequency   = (%u Hz/%.03f MHz)       Sampling rate = (%u Hz/%.03f MHz)", porteuse_rate_hz, (float)porteuse_rate_hz/(float)FREQ_ONE_MHZ, sample_rate_hz, (float)sample_rate_hz/(float)FREQ_ONE_MHZ);
            mvwprintw(score, 3, 1, "TX VGA gain = %2d dB                            Antenna       = %s", tx_vga, antenna ? "enable" : "disable");
            wrefresh(score);
        }

        for(int y = 0; y < msg.size(); y += 1)
        {
            mvwprintw(field, y + 1, 1, msg.at(y).c_str());
        }
        wrefresh(field);

        key = getch();
        init = false;
    }

    endwin();

  return 0;
}
