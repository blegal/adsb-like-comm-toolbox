#ifndef _BinaryFileDest_
#define _BinaryFileDest_

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <vector>

#include "../../Tools/BMP.hpp"
#include "../../Frame/Frame.hpp"

using namespace std;

class BinaryFileDest{
private :
    std::string filename;

    FILE* file;

public :
    BinaryFileDest(std::string file);

	~BinaryFileDest();

    void execute(Frame* f);
};

#endif
