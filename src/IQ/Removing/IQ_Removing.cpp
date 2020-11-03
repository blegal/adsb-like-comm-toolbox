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
        obuffer.resize(ibuffer.size()/2);
    }

    const float* ptr  = ibuffer.data();
    const uint32_t ll = obuffer.size();
    for(int i = 0; i < ll; i += 1)
    {
        float breal = (*ptr++);
        float bimag = (*ptr++);
        float resul = sqrt( breal * breal + bimag * bimag);
        obuffer[i]  = resul;
    }

}
