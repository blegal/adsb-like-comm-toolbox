#ifndef _BinaryFileSource_
#define _BinaryFileSource_

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <vector>

#include "../../Frame/Frame.hpp"

using namespace std;

class BinaryFileSource{
private :
    std::string filename;

    FILE* file;

public :
    BinaryFileSource(std::string file);

	~BinaryFileSource();

    void execute(Frame* f);

    bool is_alive();
};

#endif
