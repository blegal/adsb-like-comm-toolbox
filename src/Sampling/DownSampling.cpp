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
