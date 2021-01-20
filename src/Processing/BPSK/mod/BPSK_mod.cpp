#include "BPSK_mod.hpp"


BPSK_mod::BPSK_mod(const int8_t mScale)
{
    scale = mScale;
}


BPSK_mod::~BPSK_mod()
{
	
}


void BPSK_mod::execute(std::vector<uint8_t>& ibuffer, std::vector<int8_t>& obuffer)
{
	// Le buffer de sortie doit etre 2x plus grand...
    if( obuffer.size() != (2 * ibuffer.size()) )
    {
        printf("\x1B[33m(WW) vector size was updated in BPSK_mod(%s::%d)\x1B[0m\n", __FILE__, __LINE__);
        obuffer.resize(2 * ibuffer.size());
    }

    uint32_t n = ibuffer.size();
    for(uint32_t i = 0 ; i < n; i += 1)
    {
        const uint8_t value = ibuffer[i];
        obuffer[2*i+0] = 2 * value - 1;
        obuffer[2*i+1] = 0;
    }
}
