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
    uint32_t lastFid;
    FILE* file;

public :
    BinaryFileDest(std::string file);

	~BinaryFileDest();

    void execute(FECFrame* f);
};

#endif
