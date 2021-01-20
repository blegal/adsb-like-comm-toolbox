#include "IQ_Insertion.hpp"


IQ_Insertion::IQ_Insertion()
{

}


IQ_Insertion::~IQ_Insertion()
{
	
}


void IQ_Insertion::execute(std::vector<int8_t>& ibuffer, std::vector<int8_t>& obuffer)
{
	// Le buffer de sortie doit etre 2x plus grand...
    if( obuffer.size() != (2 * ibuffer.size()) )
    {
        printf("\x1B[33m(WW) vector size was updated in IQ_Insertion(%s::%d)\x1B[0m\n", __FILE__, __LINE__);
        printf("\x1B[33m(WW) -> ibuffer.size() = %lu\x1B[0m\n", ibuffer.size());
        printf("\x1B[33m(WW) -> obuffer.size() = %lu\x1B[0m\n", obuffer.size());
        obuffer.resize(2 * ibuffer.size());
    }

    uint32_t ll = ibuffer.size();
    for(uint32_t i = 0 ; i < ll; i += 1)
    {
        obuffer[2*i  ] = ibuffer[i];
        obuffer[2*i+1] = 0;
    }
}
