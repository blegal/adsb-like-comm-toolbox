#ifndef _HexSource_
#define _HexSource_

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <vector>

#include "../../Tools/BMP.hpp"
#include "../../Frame/Frame.hpp"

using namespace std;

class HexSource{
private :
    uint32_t nFrames;

public :
    HexSource();

	~HexSource();

    void execute(Frame* f);

    bool is_alive();
};

#endif
