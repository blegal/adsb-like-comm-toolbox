#ifndef _Frame_
#define _Frame_

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <complex>
#include <vector>
#include <cstring>
#include <cassert>

#include "../CRC/CRC32b.hpp"

using namespace std;

#define FRAME_INFOS         0x01
#define FRAME_NEW_IMAGE     0x02
#define FRAME_END_IMAGE     0x04
#define FRAME_NEW_LINE      0x08
#define FRAME_END_LINE      0x10
#define FRAME_EMPTY         0x20

#define str_FRAME_INFOS         "FRAME_INFOS   "
#define str_FRAME_NEW_IMAGE     "FRAME_NEW_IMG "
#define str_FRAME_END_IMAGE     "FRAME_END_IMG "
#define str_FRAME_NEW_LINE      "FRAME_NEW_LINE"
#define str_FRAME_END_LINE      "FRAME_END_LINE"
#define str_FRAME_EMPTY         "FRAME_EMPTY   "


class Frame{
protected:
    vector<uint8_t> header;
    vector<uint8_t> config;
    vector<uint8_t> payload;
    vector<uint8_t> crc_field;

    CRC32b crc;

public :
    Frame(const uint32_t n, const uint8_t type = FRAME_INFOS);    // payload size
	~Frame();

    void    set_type(const uint8_t v);
    uint8_t get_type();

    void    set_payload(const std::vector<uint8_t>& v);
    void    get_payload(      std::vector<uint8_t>& v);

    void    compute_crc ();  // compute the last 24 bits with crc value
    bool    validate_crc();  // check the latest 24 bit values


    uint8_t  data (const uint32_t pos); // a value from the payload
    void     data (const uint32_t pos, const int8_t value); // a value from the payload

    uint8_t* header_to_emit();      //
    uint8_t* conf_to_emit();        //
    uint8_t* payload_to_emit();     // the pointer to the payload field
    uint8_t* crc_to_emit();         //

    uint32_t header_size();       // the length of the preambule     in bits
    uint32_t conf_size();         // the length of the configuration in bytes
    uint32_t payload_size();      // set payload size in bytes
    uint32_t crc_size();          // the length of the crc field     in bytes

    void dump_frame();

    void get_frame_bits (std::vector<uint8_t>& v);
    bool fill_frame_bits(const std::vector<uint8_t>& buff);
    uint32_t frame_bits();         // payload size

protected:
    void set_payload_size(const uint32_t v);  // get payload size in bytes

};

#endif