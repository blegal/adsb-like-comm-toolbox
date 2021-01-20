#include "QPSK_demod.hpp"


QPSK_demod::QPSK_demod()
{

}


QPSK_demod::~QPSK_demod()
{
	
}


void QPSK_demod::execute(std::vector<float>& ibuffer, std::vector<uint8_t>& obuffer)
{
	// Le buffer de sortie doit etre 2x plus petit...
    if( obuffer.size() != (ibuffer.size()/2) )
    {
        printf("\x1B[33m(WW) vector size was updated in QPSK_demod(%s::%d)\x1B[0m\n", __FILE__, __LINE__);
        printf("\x1B[33m(WW) -> ibuffer.size() = %lu\x1B[0m\n", ibuffer.size());
        printf("\x1B[33m(WW) -> obuffer.size() = %lu\x1B[0m\n", obuffer.size());
        obuffer.resize(ibuffer.size()/2);
    }

    const uint32_t ll = obuffer.size();
    for(uint32_t i = 0 ; i < ll; i += 1)
    {
        const float left  = ibuffer[2*i  ];
        const float right = ibuffer[2*i+1];
        obuffer[i] = (left > right);
    }
}


void QPSK_demod::execute(std::vector<uint8_t>& ibuffer, std::vector<uint8_t>& obuffer)
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