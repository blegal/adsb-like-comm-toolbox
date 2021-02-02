#ifndef _FrameTools_
#define _FrameTools_

#include "FrameTools.hpp"

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <complex>
#include <vector>
#include <cstring>
#include <cassert>
#include <iostream>
#include <iomanip>

extern void dump_config   ( const uint16_t* ptr_16 );
extern void dump_payload  ( const uint8_t* ptr_8, const uint32_t payload_size, const uint32_t limit );
extern void dump_crc      ( const uint32_t* r );
extern void dump_frame    ( const std::vector<uint8_t> data );
extern void dump_frame_crc( const std::vector<uint8_t> data );
extern void dump_frame_fec( const std::vector<uint8_t> data );
extern void dump_bits     ( const std::vector<uint8_t> data, const uint32_t limit = 64 );
extern void dump_ppm_bits ( const std::vector< int8_t> data, const uint32_t limit = 64 );
extern void dump_ppm_bits ( const std::vector<uint8_t> data, const uint32_t limit = 64 );
extern void dump          ( const std::vector< int8_t> data, const uint32_t limit = 0 );
extern void dump          ( const std::vector<uint8_t> data, const uint32_t limit = 0 );

#endif