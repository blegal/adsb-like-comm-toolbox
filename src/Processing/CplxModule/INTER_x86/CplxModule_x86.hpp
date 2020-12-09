#include "../CplxModule.hpp"

class CplxModule_x86 : public CplxModule
{
public:

    CplxModule_x86();

    ~CplxModule_x86();

    void execute(std::vector< std::complex<float> >* buffer_in, std::vector<float>* buffer_out);
};
