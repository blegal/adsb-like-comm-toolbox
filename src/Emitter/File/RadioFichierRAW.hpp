#ifndef _RadioFichierRAW_
#define _RadioFichierRAW_

#include "../../Acquisition/Radio.hpp"

class RadioFichierRAW : public Radio{
private :
    std::string filename;
    FILE* stream;

public :
    RadioFichierRAW(std::string filen);
	~RadioFichierRAW();

    void initialize();

    void emission(vector<int8_t>& cbuffer);

    void reception( std::vector< std::complex<float> >& cbuffer);

    void reset();
};

#endif