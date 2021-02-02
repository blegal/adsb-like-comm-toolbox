#ifndef _LDPCEncoder_
#define _LDPCEncoder_

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <vector>
#include <cstring>
#include <cassert>

using namespace std;

class LDPCEncoder{
private :
    uint32_t K;
    uint32_t N;

    uint16_t* EncValues;

public :
    LDPCEncoder(std::string filename);

	~LDPCEncoder();

    void execute(std::vector<uint8_t>& ibuffer, std::vector<uint8_t>& obuffer);
};

#endif
