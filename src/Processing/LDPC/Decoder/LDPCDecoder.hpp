#ifndef _LDPCDecoder_
#define _LDPCDecoder_

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <cstdint>
#include <vector>

#include "./802_16e_1152x576/802_16e_1152x576_1f_m256i.hpp"

using namespace std;

class LDPCDecoder{
private :
    LDPC_decoder_802_16e_1152x576 dec;

    std::vector< int8_t> i_buffer;
    std::vector<uint8_t> o_buffer;

public :
    LDPCDecoder();

	~LDPCDecoder();

    void execute(std::vector< int8_t>& ibuffer, std::vector<uint8_t>& obuffer);
    void execute(std::vector<uint8_t>& ibuffer, std::vector<uint8_t>& obuffer);
};

#endif
