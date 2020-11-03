#ifndef _PPM_Demodulator_
#define _PPM_Demodulator_

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <vector>

using namespace std;

class PPM_Demodulator{
protected :
	std::vector<float> array;

public :
	PPM_Demodulator( );

	~PPM_Demodulator();

    void execute(std::vector<float>& ibuffer, std::vector<uint8_t>& obuffer);
};

#endif
