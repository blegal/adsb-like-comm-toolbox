#ifndef _EmitterFileRAW_
#define _EmitterFileRAW_

#include "../../../Tools/Parameters/Parameters.hpp"
#include "../Emitter.hpp"

class EmitterFileRAW : public Emitter{
private :
    std::string filename;
    FILE* stream;
    bool firstFrame;
    bool emptySlots;

public :
    EmitterFileRAW(std::string filen, const bool emptySlots = true);
    EmitterFileRAW(Parameters& param, const bool emptySlots = true);

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