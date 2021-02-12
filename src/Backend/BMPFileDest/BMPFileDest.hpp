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
    uint32_t BytesPerFrame;

    int32_t lastFid;
    int32_t picture_id;

public :
    BMPFileDest(std::string file);

	~BMPFileDest();

//    void execute(Frame*    f);
    void execute(FECFrame* f);
};

#endif
