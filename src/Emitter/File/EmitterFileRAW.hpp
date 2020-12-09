#ifndef _EmitterFileRAW_
#define _EmitterFileRAW_

#include "../../Acquisition/Receiver.hpp"
#include "../../Tools/Parameters.hpp"
#include "../Emitter.hpp"

class EmitterFileRAW : public Emitter{
private :
    std::string filename;
    FILE* stream;

public :
    EmitterFileRAW(std::string filen);
    EmitterFileRAW(Parameters& param);

	~EmitterFileRAW();

    void initialize();
    void start_engine();
    void stop_engine ();
    void close();

    void set_txvga_gain(uint32_t value);
    void emission(vector<int8_t>& cbuffer);

    void reset();
};

#endif