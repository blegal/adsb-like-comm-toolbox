#include "CplxModule_x86.hpp"


CplxModule_x86::CplxModule_x86()
{

}

CplxModule_x86::~CplxModule_x86()
{

}


void CplxModule_x86::execute(std::vector< std::complex<float> >* buffer_in, std::vector<float>* buffer_out)
{
    for(uint32_t kk = 0; kk < buffer_in->size(); kk += 1)
    {
        std::complex<float> c = buffer_in->at(kk);
        float breal = real( c );
        float bimag = imag( c );
        float resul = sqrt( breal * breal + bimag * bimag);
        buffer_out->push_back(resul);
    }
}