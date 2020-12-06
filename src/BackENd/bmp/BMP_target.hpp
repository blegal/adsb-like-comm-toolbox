#ifndef _BMP_target_
#define _BMP_target_

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <vector>

#include "../../Tools/BMP.hpp"
#include "../../Frame/Frame.hpp"

using namespace std;

class BMP_target{
private :
    BMP* bmp;

    uint32_t i_height;
    uint32_t i_width;
    uint32_t nBytesPerPixel;
    uint32_t BytesPerLine;
    uint32_t curr_x;
    uint32_t curr_y;

public :
    BMP_target();

	~BMP_target();

    void execute(Frame* f);
};

#endif
