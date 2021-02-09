#ifndef _ReceiverFileRAW_
#define _ReceiverFileRAW_

#include "../Receiver.hpp"

class ReceiverFileStreamRAW : public Receiver{
private :
    std::vector<int8_t> data;
    std::string filename;

public :
    ReceiverFileStreamRAW(std::string filen);
	~ReceiverFileStreamRAW();

    void initialize();
    void reception(vector<complex<float> >& cbuffer, const uint32_t coverage = 0);
    void reset();

    void start_engine();
    void stop_engine ();
};

#endif
