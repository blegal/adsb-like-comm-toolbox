#ifndef _RadioFichierRAW_
#define _RadioFichierRAW_

#include "../Radio.hpp"

class RadioFichierRAW : public Radio{
private :
    std::vector<int8_t> data;
    std::string filename;

public :
    RadioFichierRAW(std::string filen);
	~RadioFichierRAW();

    void initialize();
    void reception(vector<complex<float> >& cbuffer);
    void reset();

    void start_engine();
    void stop_engine ();
};

#endif