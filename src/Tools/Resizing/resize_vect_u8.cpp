#include "resize_vect_u8.hpp"


resize_vect_u8::resize_vect_u8()
{

}


resize_vect_u8::~resize_vect_u8()
{

}


void resize_vect_u8::execute(const std::vector<uint8_t>* buffer_in, std::vector<uint8_t>* buffer_out)
{
    execute(buffer_in->data(), buffer_out->data(), buffer_out->size());
}


void resize_vect_u8::execute(const uint8_t* buffer_in, uint8_t* buffer_out, const uint32_t n)
{
    memcpy(buffer_out, buffer_in, n);
}
