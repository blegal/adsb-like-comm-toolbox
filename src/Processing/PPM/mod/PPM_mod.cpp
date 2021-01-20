#include "PPM_mod.hpp"


PPM_mod::PPM_mod()
{

}


PPM_mod::~PPM_mod()
{
	
}


void PPM_mod::execute(std::vector<uint8_t>& ibuffer, std::vector<int8_t>& obuffer)
{
	// Le buffer de sortie doit etre 2x plus grand...
    if( obuffer.size() != (2 * ibuffer.size()) )
    {
        printf("\x1B[33m(WW) vector size was updated in PPM_mod(%s::%d)\x1B[0m\n", __FILE__, __LINE__);
        printf("\x1B[33m(WW) -> ibuffer.size() = %lu\x1B[0m\n", ibuffer.size());
        printf("\x1B[33m(WW) -> obuffer.size() = %lu\x1B[0m\n", obuffer.size());
        obuffer.resize(2 * ibuffer.size());
    }

    int8_t ll[] = {0,     scale, 1};
    int8_t rr[] = {scale, 0,     1};

    uint32_t n = ibuffer.size();
    for(uint32_t i = 0 ; i < n; i += 1)
    {
        const uint8_t value = ibuffer[i];
        obuffer[2*i+0] = ll[value];
        obuffer[2*i+1] = rr[value]; 
    }
}
