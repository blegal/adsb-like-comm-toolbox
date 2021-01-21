#ifndef _FECFrame_
#define _FECFrame_

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <complex>
#include <vector>
#include <cstring>
#include <cassert>
#include <iostream>
#include <iomanip>

#include "./MLType/MLType.hpp"

using namespace std;

class FECFrame{
public :
    FECFrame(const uint32_t n, const uint8_t type = FRAME_INFOS);    // payload size
    ~FECFrame();

private:
    const uint32_t _size_frame   = 68;
    const uint32_t _size_config  =  8; // 64 bits
    const uint32_t _size_payload = 60;

public:
    uint32_t size_config ();      // the length of the configuration in bytes
    uint32_t size_payload();      // set payload size in bytes
    uint32_t size_frame  ();      // payload size

private:
    uint8_t* ptr_config;         // the length of the configuration in bytes
    uint8_t* ptr_payload;        // set payload size in bytes

public:
    uint8_t* get_ptr_conf();      //
    uint8_t* get_ptr_payload();   // the pointer to the payload field

protected:
    vector<uint8_t> frame_v;

public:
    vector<uint8_t> data();

    void update(const vector<uint8_t> v);
    bool equals(const vector<uint8_t> v);

    void set_config_u8 (const uint8_t  v, const uint32_t i);
    void set_config_u16(const uint16_t v, const uint32_t i);
    void set_config_u32(const uint32_t v, const uint32_t i);

    uint8_t  get_config_u8 (const uint32_t i);
    uint16_t get_config_u16(const uint32_t i);
    uint32_t get_config_u32(const uint32_t i);

    void    clr_config ();
    void    clr_payload();

    uint8_t  data_u8 (const uint32_t pos); // a value from the payload
    uint16_t data_u16(const uint32_t pos); // a value from the payload
    uint32_t data_u32(const uint32_t pos); // a value from the payload

    void data_u8 (const int8_t   value, const uint32_t pos); // a value from the payload
    void data_u16(const uint16_t value, const uint32_t pos);
    void data_u32(const uint32_t value, const uint32_t pos);

    void set_payload(const std::vector<uint8_t>& v); // mise a jour directure du contenu du payload complet !
    void get_payload(      std::vector<uint8_t>& v); // recuperation du contenu complet du payload !

    void get_frame_bits (      std::vector<uint8_t>& v   );
    bool fill_frame_bits(const std::vector<uint8_t>& buff);

    void dump();
    std::string to_string();

};

#endif