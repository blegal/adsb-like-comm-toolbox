#ifndef _BMPFileDest_
#define _BMPFileDest_

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <vector>

#include "../../Frame/Frame.hpp"
#include "../../Tools/BMP.hpp"

using namespace std;

class BMPFileDest{
private :
    BMP* bmp;

    uint32_t i_height;
    uint32_t i_width;
    uint32_t nBytesPerPixel;
    uint32_t BytesPerLine;
    uint32_t curr_x;
    uint32_t curr_y;

public :
    BMPFileDest();

	~BMPFileDest();

    void execute(Frame* f);
};

#endif
