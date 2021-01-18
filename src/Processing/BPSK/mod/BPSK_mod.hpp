#ifndef _BPSK_mod_
#define _BPSK_mod_

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <vector>

using namespace std;

class BPSK_mod{
protected :
	int8_t scale;

public :
    BPSK_mod(const int8_t mScale);

	~BPSK_mod();

    void execute(std::vector<uint8_t>& ibuffer, std::vector<int8_t>& obuffer);
};

#endif
