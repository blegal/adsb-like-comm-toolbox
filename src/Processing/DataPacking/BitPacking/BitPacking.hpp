#ifndef _BitPacking_
#define _BitPacking_

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <vector>

using namespace std;

class BitPacking{
protected :
	uint32_t scale;

public :
    BitPacking();

	~BitPacking();

    void execute(const std::vector<uint8_t>& ibuffer, std::vector<uint8_t>& obuffer);
};

#endif
