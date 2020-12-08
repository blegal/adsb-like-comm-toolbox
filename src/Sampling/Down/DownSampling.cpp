#include "DownSampling.hpp"


DownSampling::DownSampling(const uint32_t mScale)
{
    scale = mScale;
}


DownSampling::~DownSampling()
{
	
}


void DownSampling::execute(std::vector<float>& ibuffer, std::vector<float>& obuffer)
{
	// Le buffer de sortie doit etre 2x plus grand...
    if( obuffer.size() != (ibuffer.size()/scale) )
    {
        obuffer.resize(ibuffer.size()/scale);
    }

    uint32_t ll = obuffer.size();
    for(uint32_t i = 0 ; i < ll; i += 1)
    {
        float sum = ibuffer[scale*i];
        for(uint32_t j = 1 ; j < scale; j += 1)
            sum += ibuffer[scale*i+j];
        obuffer[i] = sum;
    }
}


void DownSampling::execute(std::vector<uint8_t>& ibuffer, std::vector<uint8_t>& obuffer)
{
    // Le buffer de sortie doit etre 2x plus grand...
    if( obuffer.size() != (ibuffer.size()/scale) )
    {
        obuffer.resize(ibuffer.size()/scale);
    }

    const uint32_t ll = obuffer.size();
    for(uint32_t i = 0 ; i < ll; i += 1)
    {
        uint32_t sum = (uint32_t)ibuffer[scale * i];
        for(uint32_t j = 1 ; j < scale; j += 1)
            sum += (int32_t)ibuffer[scale * i + j];
#if 0
        sum = (sum > +127) ? +127 : sum;
        sum = (sum < -127) ? -127 : sum;
        obuffer[i] = sum;
#else
        obuffer[i] = (sum / scale);
#endif
    }
}
