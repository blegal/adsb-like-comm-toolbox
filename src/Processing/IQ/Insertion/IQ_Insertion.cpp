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
        obuffer.resize(2 * ibuffer.size());
    }

    uint32_t ll = ibuffer.size();
    for(uint32_t i = 0 ; i < ll; i += 1)
    {
        obuffer[2*i  ] = ibuffer[i];
        obuffer[2*i+1] = 0;
    }
}
