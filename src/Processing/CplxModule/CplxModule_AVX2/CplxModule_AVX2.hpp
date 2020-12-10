#include "../CplxModule.hpp"

class CplxModule_AVX2 : public CplxModule
{
public:

    CplxModule_AVX2();

    ~CplxModule_AVX2();

    void execute(std::vector< std::complex<float> >* buffer_in, std::vector<float>* buffer_out);
};
