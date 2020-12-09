#ifndef _ReceiverFileRAW_
#define _ReceiverFileRAW_

#include "../Radio.hpp"

class ReceiverFileRAW : public Radio{
private :
    std::vector<int8_t> data;
    std::string filename;

public :
    ReceiverFileRAW(std::string filen);
	~ReceiverFileRAW();

    void initialize();
    void reception(vector<complex<float> >& cbuffer);
    void reset();

    void start_engine();
    void stop_engine ();
};

#endif