#ifndef _cvt_u8_float_
#define _cvt_u8_float_

#include <vector>
#include <cstdint>

class cvt_u8_float
{
public:
    cvt_u8_float();
    ~cvt_u8_float();

    static void execute(std::vector<uint8_t>* buffer_in, std::vector<float>* buffer_out);
    static void execute(      const uint8_t*  buffer_in, std::vector<float>* buffer_out);
    static void execute(      const uint8_t*  buffer_in,             float*  buffer_out, const uint32_t n);
};

#endif
