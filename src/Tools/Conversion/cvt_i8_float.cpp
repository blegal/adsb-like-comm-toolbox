#include "cvt_i8_float.hpp"


cvt_i8_float::cvt_i8_float()
{

}


cvt_i8_float::~cvt_i8_float()
{

}


void cvt_i8_float::execute(std::vector<int8_t>* buffer_in, std::vector<float>* buffer_out)
{
    if( buffer_in->size() != buffer_out->size() )
        buffer_out->resize( buffer_in->size() );

    execute(buffer_in->data(), buffer_out->data(), buffer_out->size());
}


void cvt_i8_float::execute(const int8_t* buffer_in, std::vector<float>* buffer_out)
{
    execute(buffer_in, buffer_out->data(), buffer_out->size());
}


void cvt_i8_float::execute(const int8_t* buffer_in, float* buffer_out, const uint32_t n)
{
    for (uint32_t i = 0; i < n; i += 1)
    {
        buffer_out[i] = buffer_in[i];
    }
}
