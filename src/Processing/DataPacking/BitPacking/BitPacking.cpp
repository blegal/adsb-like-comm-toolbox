#include "BitPacking.hpp"


BitPacking::BitPacking()
{

}


BitPacking::~BitPacking()
{
	
}


void BitPacking::execute(std::vector<uint8_t>& ibuffer, std::vector<uint8_t>& obuffer)
{
	// Le buffer de sortie doit etre 2x plus grand...
    if( (ibuffer.size() / 8) != obuffer.size() )
        obuffer.resize(ibuffer.size() / 8);

    uint8_t* ptr = obuffer.data();
    const uint32_t iLength = ibuffer.size();
    for(uint32_t i = 0; i < iLength; i += 1)
    {
        uint8_t v = 0;
#pragma clang loop unroll(full)
        for( uint32_t q = 0; q < 8 ; q += 1 )
        {
            v = (v << 1) | (*ptr++);
        }
        obuffer[i] = v;
    }
}

