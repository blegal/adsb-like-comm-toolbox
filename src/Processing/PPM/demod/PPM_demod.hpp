#ifndef _PPM_Demodulator_
#define _PPM_Demodulator_

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <vector>

using namespace std;

class PPM_demod{
public :
	PPM_demod( );

	~PPM_demod();

    void execute(std::vector<float   >& ibuffer, std::vector<uint8_t>& obuffer);
    void execute(std::vector<uint8_t >& ibuffer, std::vector<uint8_t>& obuffer);
    void execute(std::vector<uint16_t>& ibuffer, std::vector<uint8_t>& obuffer);
};

#endif
