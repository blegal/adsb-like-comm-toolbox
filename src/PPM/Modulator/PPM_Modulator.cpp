#include "PPM_Modulator.hpp"


PPM_Modulator::PPM_Modulator(const int8_t mScale)
{
    scale = mScale;
}


PPM_Modulator::~PPM_Modulator()
{
	
}


void PPM_Modulator::execute(std::vector<uint8_t>& ibuffer, std::vector<int8_t>& obuffer)
{
	// Le buffer de sortie doit etre 2x plus grand...
    if( obuffer.size() != (2 * ibuffer.size()) )
    {
        obuffer.resize(2 * ibuffer.size());
    }

    int8_t ll[] = {scale,     0, 0};
    int8_t rr[] = {0,     scale, 0};

    uint32_t n = ibuffer.size();
    for(uint32_t i = 0 ; i < n; i += 1)
    {
        uint8_t value = ibuffer[i];
        obuffer[2*i+0] = ll[value];
        obuffer[2*i+1] = rr[value]; 
    }
}
