#ifndef _PPM_Modulator_
#define _PPM_Modulator_

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <vector>

using namespace std;

class PPM_mod{
protected :
	const int8_t scale = 120;

public :
	PPM_mod();

	~PPM_mod();

    void execute(std::vector<uint8_t>& ibuffer, std::vector<int8_t>& obuffer);
};

#endif
