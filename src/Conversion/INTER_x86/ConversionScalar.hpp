#include "../Conversion.hpp"

class ConversionScalar : public Conversion
{
public:

    ConversionScalar();

    ~ConversionScalar();

    void execute(std::vector< std::complex<float> >* buffer_in, std::vector<float>* buffer_out);
};
