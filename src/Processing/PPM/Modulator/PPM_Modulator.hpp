#ifndef _PPM_Modulator_
#define _PPM_Modulator_

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <vector>

using namespace std;

class PPM_Modulator{
protected :
	int8_t scale;

public :
	PPM_Modulator(const int8_t mScale);

	~PPM_Modulator();

    void execute(std::vector<uint8_t>& ibuffer, std::vector<int8_t>& obuffer);
};

#endif
