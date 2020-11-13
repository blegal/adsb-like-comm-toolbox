#include "../Conversion.hpp"

class ConversionNEON : public Conversion
{
public:

    ConversionNEON();

    ~ConversionNEON();

    void execute(std::vector< std::complex<float> >* buffer_in, std::vector<float>* buffer_out);
};
