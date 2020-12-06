#ifndef _BMP_target_
#define _BMP_target_

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <vector>

using namespace std;

class BMP_target{
protected :
	uint32_t scale;

public :
    BMP_target();

	~BMP_target();

    void execute(std::vector<int8_t>& ibuffer, std::vector<int8_t>& obuffer);
};

#endif
