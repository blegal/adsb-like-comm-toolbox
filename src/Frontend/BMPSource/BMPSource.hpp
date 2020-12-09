#ifndef _BMPFileDest_
#define _BMPFileDest_

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <vector>

#include "../Frontend.hpp"
//#include "../../Frame/Frame.hpp"
#include "../../Tools/BMP.hpp"

using namespace std;

class BMPSource : public Frontend{
private :
    BMP* bmp;

    uint32_t curr_x;
    uint32_t curr_y;
    uint32_t curr_s;
    bool isFinished;


public :
    BMPSource(std::string fileN);

	~BMPSource();

    void execute(Frame* f);

    bool is_alive();
};

#endif
