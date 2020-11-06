#include "UpSampling.hpp"


UpSampling::UpSampling(const uint32_t mScale)
{
    scale = mScale;
}


UpSampling::~UpSampling()
{
	
}

void UpSampling::execute(std::vector<int8_t>& ibuffer, std::vector<int8_t>& obuffer)
{
	// Le buffer de sortie doit etre 2x plus grand...
    if( obuffer.size() != (scale * ibuffer.size()) )
    {
        obuffer.resize(scale * ibuffer.size());
    }

    uint32_t ll = ibuffer.size();
    for(uint32_t i = 0 ; i < ll; i += 1)
    {
        int8_t value = ibuffer[i];
        for(uint32_t j = 0 ; j < scale; j += 1)
            obuffer[scale * i + j] = value;
    }
}
