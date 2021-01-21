#ifndef _BinaryFileDest_
#define _BinaryFileDest_

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <vector>

#include "../Backend.hpp"

using namespace std;

class BinaryFileDest : public Backend{
private :
    std::string filename;

    FILE* file;

public :
    BinaryFileDest(std::string file);

	~BinaryFileDest();

    void execute(Frame*    f);
    void execute(FECFrame* f);
};

#endif
