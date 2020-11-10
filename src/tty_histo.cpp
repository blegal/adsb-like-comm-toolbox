#include <curses.h>
#include <unistd.h>

#include <cstdio>
#include <cstdlib>

#include <iostream>
#include <fstream>
#include <vector>
#include <algorithm>
#include <ctime>


class Histo
{
public:
    float vmin;
    float vmax;

    std::vector<std::string> tab;

private:
    uint32_t vSize;

    std::vector<uint32_t> occur;
    std::vector<   float> proba;

public:
    Histo()
    {
        vmin  = 255;
        vmax  =   0;
        vSize =   0;

        occur.resize( 256 );
        proba.resize( 256 );
    }

    ~Histo()
    {

    }

    void load(std::vector<int16_t> vI)
    {
        vSize = vI.size();

        std::fill(occur.begin(), occur.end(), 0);

        for(int q = 0; q < vI.size(); q += 1)
        {
            vmin = vmin < vI[q] ? vmin : vI[q];
            vmax = vmax > vI[q] ? vmax : vI[q];
            occur[ vI[q] + 127 ] += 1;
        }

        for(int q = 0; q < 256; q += 1)
        {
            proba[q] = (float)occur[q] / (float)vSize;
//          std::cout << "proba[" << q << "] = " << proba[q] << std::endl;
        }

        std::cout << "(II) DEBUG vmin  = " << vmin << std::endl;
        std::cout << "(II) DEBUG vmax  = " << vmax << std::endl;
        std::cout << "(II) DEBUG vSize = " << vSize << std::endl;
    }


    void draw_y_line(const uint32_t _x_)
    {
        for(uint32_t y = 0; y < tab.size(); y += 1)
        {
            (tab[y])[_x_] = '.';
        }
    }


    void draw_x_line(const uint32_t _y_)
    {
        const uint32_t ll = tab[0].size();
        for(uint32_t x = 0; x < ll; x += 1)
        {
            (tab[_y_])[x] = '.';
        }
    }


    void draw_y_bar(const uint32_t _x_, const float ratio)
    {
        assert( ratio < 1.0f );
        const uint32_t hauteur = ratio * ((float)(tab.size()-1));
//        std::cout << "ratio   = " << ratio << std::endl;
//        std::cout << "_x_     = " << _x_ << std::endl;

        for(uint32_t y = 0; y < hauteur; y += 1)
        {
            uint32_t yy = tab.size() - 1 - y;
            assert( yy  >=             0 );
            assert( yy  <     tab.size() );
            assert( _x_ >=             0 );
            assert( yy  <  tab[0].size() );
            (tab[yy])[_x_] = '#';
        }
    }


    void resize(const uint32_t _x_, const uint32_t _y_)
    {
        tab.clear();
        for(uint32_t y = 0; y < _y_; y += 1)
        {
            std::string s = "";
            for(uint32_t x = 0; x < _x_; x += 1)
            {
                s += " ";
            }
            tab.push_back( s );
        }

        draw_x_line(  1.0f * _y_ / 5.0f );
        draw_x_line(  2.0f * _y_ / 5.0f );
        draw_x_line(  3.0f * _y_ / 5.0f );
        draw_x_line(  4.0f * _y_ / 5.0f );

        draw_y_line(  1.0f * _x_ / 8.0f );
        draw_y_line(  2.0f * _x_ / 8.0f );
        draw_y_line(  3.0f * _x_ / 8.0f );
        draw_y_line(  4.0f * _x_ / 8.0f );
        draw_y_line(  5.0f * _x_ / 8.0f );
        draw_y_line(  6.0f * _x_ / 8.0f );
        draw_y_line(  7.0f * _x_ / 8.0f );

        const uint32_t ll = tab[0].size();
        for(uint32_t x = 0; x < 256; x += 2)
        {
            float sum = proba[x] + proba[x+1];
            draw_y_bar(x/2, sum);
            //draw_y_bar(x/2, proba[x]);
//            std::cout << "SUM[" << x << "] = " << sum << std::endl;
        }
    }


    void execute(std::vector<int16_t> vI)
    {
        vSize = vI.size();

        std::fill(occur.begin(), occur.end(), 0);

        for(int q = 0; q < vI.size(); q += 1)
        {
            vmin = vmin < vI[q] ? vmin : vI[q];
            vmax = vmax > vI[q] ? vmax : vI[q];
            occur[ vI[q] + 127 ] += 1;
        }

        for(int q = 0; q < 256; q += 1)
        {
            proba[q] = (float)occur[q] / 256.0f;
        }
    }

};



int main(int argc, char *argv[]) {

    std::cout << "(II) A little program developped by B. LE GAL for teaching purpose (" << __DATE__ << " " << __TIME__ << ")" << std::endl;
    std::cout << "(II) In converts a WAV/MP3/OGG file to a VHDL ROM for FPGA implementation" << std::endl;

    std::string filename = "./resources/canary.wav";
    if (argc == 2)
    {
        filename = argv[1];
    }

#if 0
    std::time_t result = std::time(NULL);
    char* chaine       = std::ctime(&result);
    std::cout << "finished computation at " << chaine << "\n";
    std::cout << "finished computation at " << strlen(chaine) << "\n";
    exit( 0 );
#endif

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////


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
    fclose(stream);


    ////////////////////////////////////////////////////////////////////////////////////////////////////////////

    Histo histo;
    histo.load( vI );
    histo.resize(130 - 2, 42 - 7);

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

    histo.resize(parent_x - 2, parent_y - 7);

//    nodelay(stdscr, TRUE);

    // 138 / 43

    int loop = 0;

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

                histo.resize(parent_x - 2, parent_y - 7);

            }
        }

//        usleep( 1000000 );


        // draw to our windows
//        mvwprintw(field, 1, 1, "Field");
//        mvwprintw(field, 2, 1, "mon texte à moi pour voir ce que cela donne...");
//        mvwprintw(field, 3, 1, "je ne sais pas quoi ecrire pour le moment...");
        for(int y = 0; y < (parent_y - 7); y += 1)
        {
            mvwprintw(field, y + 1, 1, histo.tab.at(y).c_str());
        }

        mvwprintw(score, 1, 1, "Score");
        mvwprintw(score, 2, 1, "mon texte à moi pour voir ce que cela donne...");

//        if( loop & 0x01 )
//            mvwprintw(score, 3, 1, "je ne sais pas quoi ecrire pour le moment...");
//        else
            mvwprintw(score, 3, 1, "new_x = %d cases and new_y = %d cases", new_x, new_y);
//        loop++;

        // refresh each window
        wrefresh(stdscr);
        wrefresh(field);
        wrefresh(score);

        key = getch();
    }

    endwin();

  return 0;
}
