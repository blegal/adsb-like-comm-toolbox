#ifndef _RadioFichierUHD_
#define _RadioFichierUHD_

#include "../Radio.hpp"


class RadioFichierUHD : public Radio{
private :
    std::vector< std::complex<float> > data;
    std::string filename;

public :
    RadioFichierUHD(std::string filen);
	~RadioFichierUHD();

    void initialize();
    void reception(vector<complex<float> >& cbuffer);
    void reset();
};

#endif