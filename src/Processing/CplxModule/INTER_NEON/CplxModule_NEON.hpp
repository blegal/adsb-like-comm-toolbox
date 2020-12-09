#include "../CplxModule.hpp"

class CplxModule_NEON : public CplxModule
{
public:

    CplxModule_NEON();

    ~CplxModule_NEON();

    void execute(std::vector< std::complex<float> >* buffer_in, std::vector<float>* buffer_out);
};
