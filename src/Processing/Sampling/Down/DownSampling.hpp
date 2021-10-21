#ifndef _DownSampling_
#define _DownSampling_

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <vector>

using namespace std;

class DownSampling{
protected :
	uint32_t scale;

public :
	DownSampling(const uint32_t mScale);

	~DownSampling();

    void execute(const std::vector<float   >& ibuffer, std::vector<float   >& obuffer);
    void execute(const std::vector<uint8_t >& ibuffer, std::vector<uint8_t >& obuffer);
    void execute(const std::vector<uint16_t>& ibuffer, std::vector<uint16_t>& obuffer);
};

#endif
