#ifndef _cvt_float_u8_
#define _cvt_float_u8_

#include <vector>
#include <cstdint>

class cvt_float_u8
{
public:
    cvt_float_u8();
    ~cvt_float_u8();

    static void execute(std::vector<float>* buffer_in, std::vector<uint8_t>* buffer_out);
    static void execute(      const float*  buffer_in, std::vector<uint8_t>* buffer_out);
    static void execute(      const float*  buffer_in,             uint8_t*  buffer_out, const uint32_t n);
};

#endif
