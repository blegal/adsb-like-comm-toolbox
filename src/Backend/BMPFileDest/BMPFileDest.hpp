#ifndef _BMPFileDest_
#define _BMPFileDest_

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <vector>

#include "../Backend.hpp"
#include "../../Tools/BMP.hpp"

using namespace std;

class BMPFileDest : public Backend{
private :
    BMP* bmp;

    std::string filename;

    uint32_t i_height;
    uint32_t i_width;
    uint32_t nBytesPerPixel;
    uint32_t BytesPerLine;
    uint32_t curr_x;
    uint32_t curr_y;

public :
    BMPFileDest(std::string file);

	~BMPFileDest();

    void execute(Frame* f);
};

#endif
