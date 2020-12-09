#include "Emitter.hpp"


Emitter::Emitter(const float s_fc, const float s_fe)
{
    freq_hz    =  s_fc;
    fech_hz    =  s_fe;
}


Emitter::Emitter(Parameters& param)
{
    freq_hz    =  param.toFloat("fc");
    fech_hz    =  param.toFloat("fe");
}


Emitter::~Emitter()
{

}
