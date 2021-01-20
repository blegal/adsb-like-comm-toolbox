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
        printf("\x1B[33m(WW) vector size was updated in UpSampling(%s::%d)\x1B[0m\n", __FILE__, __LINE__);
        printf("\x1B[33m(WW) -> ibuffer.size() = %lu\x1B[0m\n", ibuffer.size());
        printf("\x1B[33m(WW) -> obuffer.size() = %lu\x1B[0m\n", obuffer.size());
        obuffer.resize(scale * ibuffer.size());
    }

    const uint32_t ll = ibuffer.size();
    for(uint32_t i = 0 ; i < ll; i += 1)
    {
        const int8_t value = ibuffer[i];
        for(uint32_t j = 0 ; j < scale; j += 1)
        {
            obuffer[scale * i + j] = value;
        }
    }
}
