#ifndef _Radio_
#define _Radio_

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <complex>
#include <vector>
#include <cassert>
#include <cstring>

using namespace std;

class Radio{

protected:
	float   fc;
	float   fe;
    uint32_t N;
    bool    _alive;

public :
    Radio( float s_fc, float s_fe);
	~Radio();
    virtual void initialize() = 0;
    virtual void reception( std::vector< std::complex<float> >& cbuffer) = 0;
    virtual void reset() = 0;
    virtual bool alive();
};

#endif