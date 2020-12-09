#include "../Conversion.hpp"

class CplxModule_AVX2 : public Conversion
{
public:

    CplxModule_AVX2();

    ~CplxModule_AVX2();

    void execute(std::vector< std::complex<float> >* buffer_in, std::vector<float>* buffer_out);
};
