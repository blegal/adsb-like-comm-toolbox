#ifndef _BPSK_demod_
#define _BPSK_demod_

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <vector>

using namespace std;

class BPSK_demod{
protected :
	std::vector<float> array;

public :
    BPSK_demod( );

	~BPSK_demod();

    void execute(std::vector<float >& ibuffer, std::vector<uint8_t>& obuffer);
    void execute(std::vector<uint8_t>& ibuffer, std::vector<uint8_t>& obuffer);
};

#endif
