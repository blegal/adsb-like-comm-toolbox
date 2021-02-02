#include "IQ_Removing.hpp"


IQ_Removing::IQ_Removing()
{

}


IQ_Removing::~IQ_Removing()
{
	
}

void IQ_Removing::execute(std::vector<float>& ibuffer, std::vector<float>& obuffer)
{
	// Le buffer de sortie doit etre 2x plus petit...
    if( obuffer.size() != (ibuffer.size()/2) )
    {
        printf("\x1B[33m(WW) vector size was updated in IQ_Removing(%s::%d)\x1B[0m\n", __FILE__, __LINE__);
        printf("\x1B[33m(WW) -> ibuffer.size() = %lu\x1B[0m\n", ibuffer.size());
        printf("\x1B[33m(WW) -> obuffer.size() = %lu\x1B[0m\n", obuffer.size());
        obuffer.resize(ibuffer.size()/2);
    }

    const float* ptr  = ibuffer.data();
    const uint32_t ll = obuffer.size();
    for(uint32_t i = 0; i < ll; i += 1)
    {
        float breal = (*ptr++);
        float bimag = (*ptr++);
        float resul = sqrt( breal * breal + bimag * bimag);
        obuffer[i]  = resul;
    }

}


void IQ_Removing::execute(std::vector<int8_t>& ibuffer, std::vector<int8_t>& obuffer)
{
    // Le buffer de sortie doit etre 2x plus petit...
    if( obuffer.size() != (ibuffer.size()/2) )
    {
        obuffer.resize(ibuffer.size()/2);
    }

//    const int8_t* ptr  = ibuffer.data();
    const uint32_t ll    = obuffer.size();
    for(uint32_t i = 0; i < ll; i += 1)
    {
        float breal = ibuffer[2*i+0];
        float bimag = ibuffer[2*i+1];
        float resul = sqrt( breal * breal + bimag * bimag);
        obuffer[i]  = resul;
    }

}
