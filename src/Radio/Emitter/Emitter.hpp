#ifndef _Emitter_
#define _Emitter_

#include "../../Tools/Parameters/Parameters.hpp"

#include <libhackrf/hackrf.h>
#include <mutex>
#include <cstring>

class Emitter {
protected:
    double freq_hz;
    double fech_hz;

public :

    Emitter(const float s_fc, const float s_fe );

    Emitter(Parameters& param);

	virtual ~Emitter();

    virtual void initialize()   = 0;
    virtual void close()        = 0;
    virtual void start_engine() = 0;
    virtual void stop_engine () = 0;
    virtual void reset()        = 0;

    virtual void set_txvga_gain(uint32_t value) = 0;

    virtual void emission(vector<int8_t>& cbuffer) = 0;

};

#endif
