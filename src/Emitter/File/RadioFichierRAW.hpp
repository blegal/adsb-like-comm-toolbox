#ifndef _RadioFichierRAW_
#define _RadioFichierRAW_

#include "../../Acquisition/Radio.hpp"
#include "../../Tools/Parameters.hpp"
#include "../Emitter.hpp"

class RadioFichierRAW : public Emitter{
private :
    std::string filename;
    FILE* stream;

public :
    RadioFichierRAW(std::string filen);
    RadioFichierRAW(Parameters& param);

	~RadioFichierRAW();

    void initialize();
    void close();

    void emission(vector<int8_t>& cbuffer);

    void reception( std::vector< std::complex<float> >& cbuffer);

    void reset();
};

#endif