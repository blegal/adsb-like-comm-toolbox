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
#include "../Processing/CRC32b/CRC/CRC32b.hpp"

#include "../Processing/LDPC/Encoder/LDPCEncoder.hpp"

using namespace std;

class FECFrame{
public :
    FECFrame(const uint32_t n, const uint8_t type = FRAME_INFOS);    // payload size
    ~FECFrame();

private:
    const uint32_t _size_synchro = 9;
    const uint32_t _size_frame   = 72;
    const uint32_t _size_config  =  8; // 64 bits
    const uint32_t _size_payload = 60;
    const uint32_t _size_crc     =  4;
    const uint32_t _size_fec     = 72;

public:
    uint32_t size_synchro();      // the length of the preambule     in bits
    uint32_t size_config ();      // the length of the configuration in bytes
    uint32_t size_payload();      // set payload size in bytes
    uint32_t size_crc    ();      // the length of the crc field     in bytes
    uint32_t size_fec    ();      // the length of the crc field     in bytes
    uint32_t size_frame  ();      // payload size

private:
    uint8_t* ptr_synchro;         // the length of the preambule     in bits
    uint8_t* ptr_config;         // the length of the configuration in bytes
    uint8_t* ptr_payload;        // set payload size in bytes
    uint8_t* ptr_crc;            // the length of the crc field     in bytes
    uint8_t* ptr_fec;            // payload size

public:
    uint8_t* synchro_to_emit();    //
    uint8_t* conf_to_emit();      //
    uint8_t* payload_to_emit();   // the pointer to the payload field
    uint8_t* crc_to_emit();       //
    uint8_t* fec_to_emit();       //

protected:
    vector<uint8_t> synchro_v;
    vector<uint8_t> frame_v;

    CRC32b crc;
    LDPCEncoder fec_enc;

    void set_config_u8 (const uint8_t  v, const uint32_t i);
    void set_config_u16(const uint16_t v, const uint32_t i);
    void set_config_u32(const uint32_t v, const uint32_t i);

    uint8_t  get_config_u8 (const uint32_t i);
    uint16_t get_config_u16(const uint32_t i);
    uint32_t get_config_u32(const uint32_t i);

    void    clr_config ();
    void    clr_payload();

    void    compute_crc ();  // Compute the last 24 bits with crc value
    void    compute_fec ();  // Encode the frame with the LDPC code

    bool    execute_crc ();  // Check the latest 24 bit values
    bool    execute_fec ();  // Decode the frame with the LDPC code

    uint8_t  data_u8 (const uint32_t pos); // a value from the payload
    uint16_t data_u16(const uint32_t pos); // a value from the payload
    uint32_t data_u32(const uint32_t pos); // a value from the payload

    void data_u8 (const int8_t   value, const uint32_t pos); // a value from the payload
    void data_u16(const uint16_t value, const uint32_t pos);
    void data_u32(const uint32_t value, const uint32_t pos);



    void dump_frame();
    std::string to_string();

    void set_payload(const std::vector<uint8_t>& v); // mise a jour directure du contenu du payload complet !
    void get_payload(      std::vector<uint8_t>& v); // recuperation du contenu complet du payload !

    void get_frame_bits (std::vector<uint8_t>& v);
    bool fill_frame_bits(const std::vector<uint8_t>& buff);

protected:
//    void set_payload_size(const uint32_t v);  // get payload size in bytes

};

#endif