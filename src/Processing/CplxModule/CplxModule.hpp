#ifndef _CplxModule_
#define _CplxModule_

#include <vector>
#include <complex>
#include <cmath>

class CplxModule
{
public:

    CplxModule();

    virtual ~CplxModule();

    virtual void execute(std::vector< std::complex<float> >* buffer_in, std::vector<float>* buffer_out) = 0;
};

#endif