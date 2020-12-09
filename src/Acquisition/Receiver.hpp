#ifndef _Radio_
#define _Radio_

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <complex>
#include <vector>
#include <cstring>
#include <cassert>

using namespace std;

class Receiver{

protected:
	float   fc;
	float   fe;
    uint32_t N;
    bool    _alive;

public :
    Receiver(float s_fc, float s_fe);
	virtual ~Receiver();
    virtual void initialize() = 0;
    virtual void reception(std::vector< std::complex<float> >& cbuffer) = 0;
    virtual void reset() = 0;
    virtual bool alive();

    virtual void start_engine() = 0;
    virtual void stop_engine () = 0;
};

#endif