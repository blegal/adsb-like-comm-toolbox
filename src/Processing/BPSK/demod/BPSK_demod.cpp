#include "BPSK_demod.hpp"


BPSK_demod::BPSK_demod()
{

}


BPSK_demod::~BPSK_demod()
{
	
}


void BPSK_demod::execute(std::vector<float>& ibuffer, std::vector<uint8_t>& obuffer)
{
	// Le buffer de sortie doit etre 2x plus petit...
    if( obuffer.size() != (ibuffer.size()/2) )
    {
        printf("\x1B[33m(WW) vector size was updated in BPSK_demod(%s::%d)\x1B[0m\n", __FILE__, __LINE__);
        obuffer.resize(ibuffer.size()/2);
    }

    const uint32_t ll = obuffer.size();
    for(uint32_t i = 0 ; i < ll; i += 1)
    {
        const float I = ibuffer[2*i  ];
        const float Q = ibuffer[2*i+1];
        obuffer[i]    = I >= 0;
    }
}


void BPSK_demod::execute(std::vector<uint8_t>& ibuffer, std::vector<uint8_t>& obuffer)
{
    // Le buffer de sortie doit etre 2x plus petit...
    if( obuffer.size() != (ibuffer.size() ) )
    {
        obuffer.resize( ibuffer.size() );
    }

    const uint32_t ll = obuffer.size();
    for(uint32_t i = 0 ; i < ll; i += 1)
    {
        const int8_t left  = ibuffer[2*i  ];
        const int8_t right = ibuffer[2*i+1];
        obuffer[i] = (left > right);
    }
}