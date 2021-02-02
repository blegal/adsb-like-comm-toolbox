#ifndef _resize_vect_u8_
#define _resize_vect_u8_

#include <vector>
#include <cstdint>
#include <cstring>
#include <cassert>

class resize_vect_u8
{
public:
    resize_vect_u8();
    ~resize_vect_u8();

    static void execute(const std::vector<uint8_t>* buffer_in, std::vector<uint8_t>* buffer_out);
    static void execute(      const uint8_t*        buffer_in,               uint8_t* buffer_out, const uint32_t n);
};

#endif
