#ifndef _UpSampling_
#define _UpSampling_

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <vector>

using namespace std;

class UpSampling{
protected :
	uint32_t scale;

public :
	UpSampling(const uint32_t mScale);

	~UpSampling();

    void execute(std::vector<int8_t>& ibuffer, std::vector<int8_t>& obuffer);
};

#endif
