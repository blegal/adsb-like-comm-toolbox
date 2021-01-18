#ifndef _BitUnpacking_
#define _BitUnpacking_

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <vector>

using namespace std;

class BitUnpacking{
public :
    BitUnpacking();

	~BitUnpacking();

    void execute(std::vector<uint8_t>& ibuffer, std::vector<uint8_t>& obuffer);
};

#endif
