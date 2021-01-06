#ifndef _cvt_i8_float_
#define _cvt_i8_float_

#include <vector>
#include <cstdint>

class cvt_i8_float
{
public:
    cvt_i8_float();
    ~cvt_i8_float();

    static void execute(std::vector<int8_t>* buffer_in, std::vector<float>* buffer_out);
    static void execute(      const int8_t*  buffer_in, std::vector<float>* buffer_out);
    static void execute(      const int8_t*  buffer_in,             float*  buffer_out, const uint32_t n);
};

#endif
