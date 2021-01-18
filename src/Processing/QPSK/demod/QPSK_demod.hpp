#ifndef _QPSK_demod_
#define _QPSK_demod_

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <vector>

using namespace std;

class QPSK_demod{
protected :
	std::vector<float> array;

public :
    QPSK_demod( );

	~QPSK_demod();

    void execute(std::vector<float >& ibuffer, std::vector<uint8_t>& obuffer);
    void execute(std::vector<uint8_t>& ibuffer, std::vector<uint8_t>& obuffer);
};

#endif
