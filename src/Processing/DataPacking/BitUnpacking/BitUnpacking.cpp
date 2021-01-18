#include "BitUnpacking.hpp"


BitUnpacking::BitUnpacking()
{

}


BitUnpacking::~BitUnpacking()
{

}


void BitUnpacking::execute(std::vector<uint8_t>& ibuffer, std::vector<uint8_t>& obuffer)
{
	// Le buffer de sortie doit etre 2x plus grand...
    if( obuffer.size() != (8 * ibuffer.size()) )
        obuffer.resize(8 *  ibuffer.size());

    uint8_t* ptr = obuffer.data();
    const uint32_t iLength = ibuffer.size();
    for(uint32_t i = 0; i < iLength; i += 1)
    {
        const uint8_t v = ibuffer[i];
#pragma clang loop unroll(full)
        for( uint32_t q = 0; q < 8 ; q += 1 )
        {
            (*ptr++) = (v >> (7-q)) & 0x01;
        }
    }
}
