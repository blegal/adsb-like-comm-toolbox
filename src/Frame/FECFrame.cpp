#include "FECFrame.hpp"


FECFrame::FECFrame(const uint32_t n, const uint8_t type)
{
    //
    // On alloue l'espace memoire associé aux données + 24b CRC
    //
    frame_v.resize( _size_frame  );
    ptr_config     = frame_v.data ();
    ptr_payload    = ptr_config  + size_config ();
}


FECFrame::~FECFrame()
{

}


vector<uint8_t> FECFrame::data()
{
    return frame_v;
}


void FECFrame::update(const vector<uint8_t> v)
{
    if( frame_v.size() != v.size() )
    {
        printf("\x1B[33m(EE) In FECFrame::update, the vector dimensions do not match (%s::%d)\x1B[0m\n", __FILE__, __LINE__);
        exit( EXIT_FAILURE );
    }

    const uint32_t ll = v.size();
    for (uint32_t i = 0; i < ll; i += 1)
        frame_v[i] = v[i];
}


bool FECFrame::equals(const vector<uint8_t> v)
{
    if( frame_v.size() != v.size() )
    {
        printf("\x1B[33m(EE) In FECFrame::equals, the vector dimensions do not match (%s::%d)\x1B[0m\n", __FILE__, __LINE__);
        exit( EXIT_FAILURE );
    }

    uint32_t diff = 0;
    const uint32_t ll = v.size();
    for (uint32_t i = 0; i < ll; i += 1)
        diff += (frame_v[i] != v[i]);

    return (diff == 0);
}


void FECFrame::set_config_u8 (const uint8_t v, const uint32_t i)
{
    if( i >= size_config() )
        throw std::runtime_error("FECFrame::set_config_u8 : memory access (write) out of bounds");
    ptr_config[i] = v;
}


void FECFrame::set_config_u16(const uint16_t v, const uint32_t i)
{
    if( i >= (size_config()/2) )
        throw std::runtime_error("FECFrame::set_config_u16 : memory access (write) out of bounds");
    ((uint16_t*)ptr_config)[i] = v;
}


void FECFrame::set_config_u32(const uint32_t v, const uint32_t i)
{
    if( i >= (size_config()/4) )
        throw std::runtime_error("FECFrame::set_config_u32 : memory access (write) out of bounds");
    ((uint32_t*)ptr_config)[i] = v;
}


uint8_t  FECFrame::get_config_u8 (const uint32_t i)
{
    if( i >= size_config() )
        throw std::runtime_error("FECFrame::get_config_u8 : memory access (read) out of bounds");
    return ptr_config[i];
}


uint16_t FECFrame::get_config_u16(const uint32_t i)
{
    if( i >= (size_config()/2) )
        throw std::runtime_error("FECFrame::get_config_u16 : memory access (read) out of bounds");
    return ((uint16_t*)ptr_config)[i];
}


uint32_t FECFrame::get_config_u32(const uint32_t i)
{
    if( i >= (size_config()/4) )
        throw std::runtime_error("FECFrame::get_config_u32 : memory access (read) out of bounds");
    return ((uint32_t*)ptr_config)[i];
}


void FECFrame::clr_config ()
{
    const uint32_t size = size_config();
    for(uint32_t i = 0; i < size; i+= 1)
        ptr_config[i] = 0;
}


uint32_t FECFrame::sum_frame()
{
    uint32_t sum = 0;
    const uint32_t size = frame_v.size();
    for(uint32_t i = 0; i < size; i+= 1)
        sum += frame_v[i];
    return sum;
}


void FECFrame::clr_payload()
{
    const uint32_t size = size_payload();
    for(uint32_t i = 0; i < size; i+= 1)
        ptr_payload[i] = 0;
}


uint32_t FECFrame::size_config()         // the length of the configuration in bytes
{
    return _size_config;
}


uint32_t FECFrame::size_payload()      // set payload size in bytes
{
    return _size_payload;
}


uint32_t FECFrame::size_frame()        // payload size
{
    return _size_frame;
}


void FECFrame::set_payload(const std::vector<uint8_t>& v)
{
    const uint32_t ll = size_payload();
    // On check la taille des données
    if( ll != v.size() )
        throw std::runtime_error("FECFrame::set_payload : the payload sizes does not match !");

    for(uint32_t i = 0; i < ll; i += 1)
        ptr_payload[i] = v[i];
}


void FECFrame::get_payload(std::vector<uint8_t>& v)
{
    const uint32_t ll = size_payload();
    // On check la taille des données
    if( v.size() > ll )
        throw std::runtime_error("Frame::get_payload : the payload sizes does not match !");

    for(uint32_t i = 0; i < ll; i += 1)
        v[i] = ptr_payload[i];
}


template< typename T >
std::string int_to_hex( T i )
{
    std::stringstream stream;
    stream << std::setfill ('0') << std::setw(sizeof(T)*2) << std::hex << (uint32_t)i;
    return stream.str();
}


uint8_t  FECFrame::data_u8(const uint32_t pos)
{
    return ptr_payload[pos];
}


uint16_t  FECFrame::data_u16(const uint32_t pos)
{
    const uint16_t* ptr = (const uint16_t*)ptr_payload;
    return ptr[pos];
}


uint32_t  FECFrame::data_u32(const uint32_t pos)
{
    const uint32_t* ptr = (const uint32_t*)ptr_payload;
    return ptr[pos];
}


void FECFrame::data_u8(const int8_t value, const uint32_t pos)
{
    ptr_payload[pos] = value;
}


void FECFrame::data_u16(const uint16_t value, const uint32_t pos)
{
    uint16_t* ptr = (uint16_t*)ptr_payload;
    ptr[pos] = value;
}


void FECFrame::data_u32(const uint32_t value, const uint32_t pos)
{
    uint32_t* ptr = (uint32_t*)ptr_payload;
    ptr[pos] = value;
}


uint8_t* FECFrame::get_ptr_conf()
{
    return ptr_config;
}


uint8_t* FECFrame::get_ptr_payload()
{
    return ptr_payload;
}

void _dump_config( const uint16_t* ptr_16 )
{
    uint16_t type = ptr_16[0];
    switch ( type )
    {
        case FRAME_INFOS     : printf(str_FRAME_INFOS     ); break;
        case FRAME_NEW_IMAGE : printf(str_FRAME_NEW_IMAGE ); break;
        case FRAME_END_IMAGE : printf(str_FRAME_END_IMAGE ); break;
        // case FRAME_NEW_LINE  : printf(str_FRAME_NEW_LINE  ); break;
        // case FRAME_END_LINE  : printf(str_FRAME_END_LINE  ); break;
        case FRAME_EMPTY     : printf(str_FRAME_EMPTY     ); break;
        default              : printf("UNK. (0x%4.4X) ", type ); break;
    }
    printf("[0x%4.4X]  | 0x%4.4X 0x%4.4X 0x%4.4X | ", type, ptr_16[1], ptr_16[2], ptr_16[3]);
}

void _dump_payload( const uint8_t* ptr_8, const uint32_t payload_size, const uint32_t limit )
{
    printf("%s0x", "\033[1;33m");
    if( payload_size <= (2*limit) )
    {
        for(uint32_t i = 0; i < payload_size; i += 1)
            printf("%2.2X", ptr_8[i]);
    }else{
        for(uint32_t i = 0; i < limit; i += 1)
            printf("%2.2X", ptr_8[i]);
        printf("........");
        for(uint32_t i = payload_size - limit; i < payload_size; i += 1)
            printf("%2.2X", ptr_8[i]);
    }
    printf("%s", "\033[0m");
}

void FECFrame::dump()
{
    const uint16_t* ptr_16 = (const uint16_t*)frame_v.data();
    _dump_config( ptr_16 );

    const uint8_t*  ptr_8  = (const uint8_t *)frame_v.data() + 8; // 8 octets pour la configuration
    const uint32_t  payload_size = (frame_v.size() - 8);
    _dump_payload( ptr_8, payload_size, 16 );
    printf("\n");
}

std::string FECFrame::to_string()
{
    std::string outp = "";

    const uint32_t type = get_config_u16(0);
    switch ( type )
    {
        case FRAME_INFOS     : outp += str_FRAME_INFOS;     break;
        case FRAME_NEW_IMAGE : outp += str_FRAME_NEW_IMAGE; break;
        case FRAME_END_IMAGE : outp += str_FRAME_END_IMAGE; break;
        // case FRAME_NEW_LINE  : outp += str_FRAME_NEW_LINE;  break;
        // case FRAME_END_LINE  : outp += str_FRAME_END_LINE;  break;
        case FRAME_EMPTY     : outp += str_FRAME_EMPTY;     break;
        default              : outp += "FRAME_UNKNOWN ";    break;
//        default              : outp += "UNKNOWN TYPE" + int_to_hex<uint16_t>( get_config_u16(0) );    break;
    }
    outp += int_to_hex<uint16_t>( type );

    outp += " | " + int_to_hex<uint16_t>( get_config_u16(1) );
    outp += " | " + int_to_hex<uint16_t>( get_config_u16(2) );
    outp += " | " + int_to_hex<uint16_t>( get_config_u16(3) );
    outp += " | 0x";

    const uint32_t ll = size_payload();    // the pointer to the payload field
    for(uint32_t i = 0; i < ll; i += 1)
        outp += int_to_hex<uint8_t>( data_u8(i) );
    outp += " | ";

//    uint32_t* r = (uint32_t*)crc_to_emit();
//    outp += "CRC32b = ";
//    outp += "0x";
//    outp += int_to_hex<uint32_t>( r[0] );
//    outp += " | ";
//
//    outp += "CRC is ";
//    if( validate_crc() == true )
//    {
//        outp += "OK ...";
//    }
//    else
//    {
//        outp += "KO !!!";
//    }

    return outp;
}

#include <stdio.h>

#define RED   "\x1B[31m"
#define GRN   "\x1B[32m"
#define YEL   "\x1B[33m"
#define BLU   "\x1B[34m"
#define MAG   "\x1B[35m"
#define CYN   "\x1B[36m"
#define WHT   "\x1B[37m"
#define RESET "\x1B[0m"
