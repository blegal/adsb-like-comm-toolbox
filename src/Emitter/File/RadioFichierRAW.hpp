#ifndef _EmitterFichierRAW_
#define _EmitterFichierRAW_

#include "../../Acquisition/Radio.hpp"
#include "../../Tools/Parameters.hpp"
#include "../Emitter.hpp"

class EmitterFichierRAW : public Emitter{
private :
    std::string filename;
    FILE* stream;

public :
    EmitterFichierRAW(std::string filen);
    EmitterFichierRAW(Parameters& param);

	~EmitterFichierRAW();

    void initialize();
    void start_engine();
    void stop_engine ();
    void close();

    void set_txvga_gain(uint32_t value);
    void emission(vector<int8_t>& cbuffer);

    void reset();
};

#endif