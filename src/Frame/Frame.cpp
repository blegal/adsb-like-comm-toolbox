#include "Frame.hpp"

Frame::Frame(const uint32_t n, const uint8_t type)    // payload size in bytes
{
    //
    // On code le preambule ADSB
    //
    header_v.push_back( 1 );  // 1
    header_v.push_back( 1 );  // 2
    header_v.push_back( 2 );  // 3
    header_v.push_back( 0 );  // 4
    header_v.push_back( 0 );  // 5
    header_v.push_back( 2 );  // 6
    header_v.push_back( 2 );  // 7
    header_v.push_back( 2 );  // 8

    //
    // On alloue l'espace memoire associé aux données + 24b CRC
    //
    config_v.resize   (2); // in bytes
    set_type   ( type );
    set_special( 0x00 );
//    set_payload_size(   n );
    payload_v.resize  (   n );
    crc_field_v.resize(4); // in bytes
}


Frame::~Frame()
{

}


void Frame::set_type(const uint8_t v)
{
//    const uint8_t w = mlType.execute( v );
//    if( v != w )
//    {
//        printf("%s(WW) Auto-correction of frame type from 0x%2.2X to 0x%2.2X.%s\n", "\033[1;31m", v, w, "\033[0m");
//    }
    config_v[0] = v;
}


uint8_t Frame::get_type()
{
    return config_v[0];
}


void Frame::set_special(const uint8_t v)
{
    config_v[1] = v;
}


uint8_t Frame::get_special()
{
    return config_v[1];
}


uint32_t Frame::header_size()
{
    return header_v.size();
}

uint32_t Frame::conf_size()
{
    return config_v.size();
}

uint32_t Frame::crc_size()
{
    return crc_field_v.size();
}

uint32_t Frame::payload_size()                  // payload
{
    return payload_v.size();
//    return ((uint32_t)config[1]) + 1;
}


//void Frame::set_payload_size(const uint32_t v)      // payload
//{
//    config[1] =   ( v - 1);
//    payload.resize( v    );
//}


void Frame::set_payload(const std::vector<uint8_t>& v)
{
    // On check la taille des données
    if( v.size() != payload_v.size() )
    {
        std::cout << "Error in Frame::set_payload(v.size() = " << v.size() << ")" << std::endl;
        exit( -1 );
    }

    const uint32_t ll = v.size();
    for(uint32_t i = 0; i < ll; i += 1)
    {
        payload_v[i] = v[i];
    }
}


void Frame::get_payload(std::vector<uint8_t>& v)
{
    // On check la taille des données
    if( v.size() != payload_v.size() )
    {
        std::cout << "Error in Frame::get_payload(v.size() = " << v.size() << ")" << std::endl;
        exit( -1 );
    }

    const uint32_t ll = payload_v.size();
    for(uint32_t i = 0; i < ll; i += 1)
    {
        v[i] = payload_v[i];
    }
}

void Frame::clr_payload( )
{
    const uint32_t ll = payload_v.size();
    for(uint32_t i = 0; i < ll; i += 1)
    {
        payload_v[i] = 0;
    }
}

void Frame::get_frame_bits(std::vector<uint8_t>& buff)
{
    const uint32_t ll = header_v.size() + 8 * (config_v.size() + payload_v.size() + crc_field_v.size());
    if( buff.size() != ll )
    {
        std::cout << "Error in Frame::get_frame_bits, the number of received bits ( buff.size() = " << buff.size() << ")" << endl;
        std::cout << "      is not adapted to the Frame object." << std::endl;
        exit( -1 );
    }

    uint8_t* ptr = buff.data();

    const uint8_t* h = header_to_emit();
    const uint32_t hh = header_size();
    for(uint32_t i = 0; i < hh; i += 1)
    {
        (*ptr++) = h[i];
    }

    const uint8_t* c  = conf_to_emit();
    const uint32_t qq = conf_size();
    for(uint32_t i = 0; i < qq; i += 1)
    {
        const uint8_t v = c[i];
#pragma clang loop unroll(full)
        for( uint32_t q = 0; q < 8 ; q += 1 )
        {
            (*ptr++) = (v >> (7-q)) & 0x01;
        }
//        printf("\n");
    }

    const uint8_t* p = payload_to_emit();
    const uint32_t pp = payload_size();
    for(uint32_t i = 0; i < pp; i += 1)
    {
        const uint8_t v = p[i];
#pragma clang loop unroll(full)
        for( uint32_t q = 0; q < 8 ; q += 1 )
        {
            (*ptr++) = (v >> (7-q)) & 0x01;
        }
    }

    const uint8_t* r = crc_to_emit();         //
    const uint32_t tt = crc_size();
    for(uint32_t i = 0; i < tt; i += 1)
    {
        const uint8_t v = r[i];
#pragma clang loop unroll(full)
        for( uint32_t q = 0; q < 8 ; q += 1 )
        {
            (*ptr++) = (v >> (7-q)) & 0x01;
        }
    }
}


uint32_t Frame::frame_bits()         // payload size
{
    const uint32_t ll = header_v.size() + 8 * (config_v.size() + payload_v.size() + crc_field_v.size());
    return ll;
}

#define DISALE_WRONG_SIZE_FRAME

bool Frame::fill_frame_bits(const std::vector<uint8_t>& in_buff)
{
    const uint32_t ll = header_v.size() + 8 * (config_v.size() + payload_v.size() + crc_field_v.size());
    if( in_buff.size() != ll )
    {
        std::cout << "Error in Frame::fill_frame_bits, the number of received bits ( buff.size() = " << in_buff.size() << ")" << endl;
        std::cout << "      is not adapted to the Frame object." << std::endl;
        exit( -1 );
    }

    const uint8_t* ptr_in = in_buff.data();

    //
    //  We fill the preambule field with the right amount of bits
    //
    uint8_t* h        = header_to_emit();
    const uint32_t hh = header_size();
    for(uint32_t i = 0; i < hh; i += 1)
    {
        h[i] = (*ptr_in++);
    }
//    set_type( ptr_in[0] );
//    set_special( ptr_in[1] );
//    ptr_in += 2;

    //
    //  We fill the configuration header field with the right amount of bits
    //
    uint8_t* c = conf_to_emit();
    const uint32_t cc = conf_size();
    for(uint32_t i = 0; i < cc; i += 1)
    {
        uint8_t v = 0;
#pragma clang loop unroll(full)
        for( uint32_t q = 0; q < 8 ; q += 1 )
        {
            v = (v << 1) | (*ptr_in++);
        }
        c[i] = v;
    }

    uint32_t p_length = payload_size(); // on recupere la taille du payload

    uint8_t* p = payload_to_emit();
    for(uint32_t i = 0; i < p_length; i += 1)
    {
        uint8_t v = 0;
#pragma clang loop unroll(full)
        for( uint32_t q = 0; q < 8 ; q += 1 )
        {
            v = (v << 1) | (*ptr_in++);
        }
        p[i] = v;
    }

    uint8_t* r        = crc_to_emit();
    const uint32_t cr = crc_size();
    for(uint32_t i = 0; i < cr; i += 1)
    {
        uint8_t v = 0;
#pragma clang loop unroll(full)
        for( uint32_t q = 0; q < 8 ; q += 1 )
        {
            v = (v << 1) | (*ptr_in++);
        }
        r[i] = v;
    }

    return true;
}


void Frame::compute_crc ()
{
    uint32_t v;
    v = crc.execute( config_v     );
    v = crc.execute( payload_v, v );
    uint32_t* r = (uint32_t*)crc_to_emit();
    r[0] = v;
}


bool Frame::validate_crc()
{
    uint32_t v;
    v = crc.execute( config_v     );
    v = crc.execute( payload_v, v );
    uint32_t* r = (uint32_t*)crc_to_emit();
    return (r[0] == v);
}


uint8_t* Frame::header_to_emit()
{
    return header_v.data();
}


void Frame::dump_frame()
{
    uint8_t* h = header_to_emit();
    for(uint32_t i = 0; i < header_size(); i += 1)
        printf("%d", h[i]);
    printf(" | ");

    uint8_t* c = conf_to_emit();
    switch ( c[0] )
    {
        case FRAME_INFOS     : printf(str_FRAME_INFOS     ); break;
        case FRAME_NEW_IMAGE : printf(str_FRAME_NEW_IMAGE ); break;
        case FRAME_END_IMAGE : printf(str_FRAME_END_IMAGE ); break;
        // case FRAME_NEW_LINE  : printf(str_FRAME_NEW_LINE  ); break;
        // case FRAME_END_LINE  : printf(str_FRAME_END_LINE  ); break;
        case FRAME_EMPTY     : printf(str_FRAME_EMPTY     ); break;
        default              : printf("FRAME_UNKNOWN "    ); break;
    }
    printf(" | %3d bytes | ", (uint32_t)c[1]);

    uint8_t* p = payload_to_emit();     // the pointer to the payload field
#if 0
    for(uint32_t i = 0; i < payload_size(); i += 1)
      printf("%s0x%2.2X%s ", "\033[1;33m", p[i], "\033[0m");
#else
    printf("(%d) ", payload_size());
    printf("%s0x", "\033[1;33m");
    if( payload_size() <= 48 )
    {
        for(uint32_t i = 0; i < payload_size(); i += 1)
            printf("%2.2X", p[i]);
    }else{
        for(uint32_t i = 0; i < 16; i += 1)
            printf("%2.2X", p[i]);
        printf("........");
        for(uint32_t i = payload_size() - 16; i < payload_size(); i += 1)
            printf("%2.2X", p[i]);
    }
    printf("%s", "\033[0m");
#endif
    printf(" | ");

    uint32_t* r = (uint32_t*)crc_to_emit();
    printf("CRC32b = %s0x%8.8X%s | ", "\033[1;32m", r[0], "\033[0m");

    if( validate_crc() == true )
        printf("CRC is %sOK...%s\n", "\033[1;32m", "\033[0m");
    else
        printf("CRC is %sKO !!!%s\n", "\033[1;31m", "\033[0m");

}


template< typename T >
std::string int_to_hex( T i )
{
    std::stringstream stream;
    stream << std::setfill ('0') << std::setw(sizeof(T)*2) << std::hex << (uint32_t)i;
    return stream.str();
}

std::string Frame::to_string()
{
    std::string outp = "";

    uint8_t* h = header_to_emit();
    for(uint32_t i = 0; i < header_size(); i += 1)
        outp += std::to_string(h[i]);
    outp += " | ";

    uint8_t* c = conf_to_emit();
    switch ( c[0] )
    {
        case FRAME_INFOS     : outp += str_FRAME_INFOS;     break;
        case FRAME_NEW_IMAGE : outp += str_FRAME_NEW_IMAGE; break;
        case FRAME_END_IMAGE : outp += str_FRAME_END_IMAGE; break;
        // case FRAME_NEW_LINE  : outp += str_FRAME_NEW_LINE;  break;
        // case FRAME_END_LINE  : outp += str_FRAME_END_LINE;  break;
        case FRAME_EMPTY     : outp += str_FRAME_EMPTY;     break;
        default              : outp += "FRAME_UNKNOWN ";    break;
    }

    outp += " | " + std::to_string(((uint32_t)c[1])+1) + " bytes | ";

    uint8_t* p = payload_to_emit();     // the pointer to the payload field
    outp += "0x";
    for(uint32_t i = 0; i < payload_size(); i += 1)
        outp += int_to_hex<uint8_t>( p[i] );
    outp += " | ";

    uint32_t* r = (uint32_t*)crc_to_emit();
    outp += "CRC32b = ";
    outp += "0x";
    outp += int_to_hex<uint32_t>( r[0] );
    outp += " | ";

    outp += "CRC is ";
    if( validate_crc() == true )
    {
        outp += "OK ...";
    }
    else
    {
        outp += "KO !!!";
    }

    return outp;
}

uint8_t* Frame::conf_to_emit()
{
    return config_v.data();
}


uint8_t* Frame::payload_to_emit()
{
    return payload_v.data();
}


uint8_t* Frame::crc_to_emit()
{
    return crc_field_v.data();
}


uint8_t  Frame::data(const uint32_t pos)
{
    return payload_v[pos];
}

uint16_t  Frame::data_u16(const uint32_t pos)
{
    const uint16_t* ptr = (const uint16_t*)payload_v.data();
    return ptr[pos];
}

uint32_t  Frame::data_u32(const uint32_t pos)
{
    const uint32_t* ptr = (const uint32_t*)payload_v.data();
    return ptr[pos];
}

void Frame::data(const uint32_t pos, const int8_t value)
{
    payload_v[pos] = value;
}

void Frame::data_u16(const uint32_t pos, const uint16_t value)
{
    uint16_t* ptr = (uint16_t*)payload_v.data();
    ptr[pos] = value;
}

void Frame::data_u32(const uint32_t pos, const uint32_t value)
{
    uint32_t* ptr = (uint32_t*)payload_v.data();
    ptr[pos] = value;
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

int truc() {
    printf(RED "red\n"     RESET);
    printf(GRN "green\n"   RESET);
    printf(YEL "yellow\n"  RESET);
    printf(BLU "blue\n"    RESET);
    printf(MAG "magenta\n" RESET);
    printf(CYN "cyan\n"    RESET);
    printf(WHT "white\n"   RESET);

    return 0;
}
