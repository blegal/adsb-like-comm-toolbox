#ifndef _cvt_float_i8_
#define _cvt_float_i8_

#include <vector>
#include <cstdint>


class cvt_float_i8
{
public:
    cvt_float_i8();
    ~cvt_float_i8();

    static void execute(std::vector<float>* buffer_in, std::vector<int8_t>* buffer_out);
    static void execute(      const float*  buffer_in, std::vector<int8_t>* buffer_out);
    static void execute(      const float*  buffer_in,             int8_t*  buffer_out, const uint32_t n);
};

#endif
