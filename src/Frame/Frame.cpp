#include "Frame.hpp"

Frame::Frame(const uint32_t n, const uint8_t type)    // payload size in bytes
{
    //
    // On code le preambule ADSB
    //
    header.push_back( 1 );
    header.push_back( 1 );
    header.push_back( 2 );
    header.push_back( 0 );
    header.push_back( 0 );
    header.push_back( 2 );
    header.push_back( 2 );
    header.push_back( 2 );

    //
    // On alloue l'espace memoire associé aux données + 24b CRC
    //    
    config.resize   (2); // in bytes
    set_type( type );
    set_payload_size(n);
    crc_field.resize(4); // in bytes
}


Frame::~Frame()
{

}


void Frame::set_type(const uint8_t v)
{
    config[0] = v;
}


uint8_t Frame::get_type()
{
    return config[0];
}


uint32_t Frame::header_size()
{
    return header.size();
}

uint32_t Frame::conf_size()
{
    return config.size();
}

uint32_t Frame::crc_size()
{
    return crc_field.size();
}

uint32_t Frame::payload_size()                  // payload
{
    return payload.size();
//    return ((uint32_t)config[1]) + 1;
}


void Frame::set_payload_size(const uint32_t v)      // payload
{
    assert(v >=   1);
    assert(v <= 256);
    config[1] =   ( v - 1);
    payload.resize( v    );

}


void Frame::set_payload(const std::vector<uint8_t>& v)
{
    // On check la taille des données
    if( v.size() != payload.size() )
    {
        std::cout << "Error in Frame::set_payload(v.size() = " << v.size() << ")" << std::endl;
        exit( -1 );
    }
    for(uint32_t i = 0; i < v.size(); i += 1)
    {
        payload[i] = v[i];
    }
}


void Frame::get_payload(std::vector<uint8_t>& v)
{
    // On check la taille des données
    if( v.size() != payload.size() )
    {
        std::cout << "Error in Frame::get_payload(v.size() = " << v.size() << ")" << std::endl;
        exit( -1 );
    }
    for(uint32_t i = 0; i < payload.size(); i += 1)
    {
        v[i] = payload[i];
    }
}


void Frame::get_frame_bits(std::vector<uint8_t>& buff)
{
    const uint32_t ll = header.size() + 8 * (config.size() + payload.size() + crc_field.size());
    if( buff.size() != ll )
    {
        std::cout << "Error in Frame::fill_frame_bits, the number of received bits ( buff.size() = " << buff.size() << ")" << endl;
        std::cout << "      is not adapted to the Frame object." << std::endl;
        exit( -1 );
    }

    uint8_t* ptr = buff.data();

    const uint8_t* h = header_to_emit();
    for(uint32_t i = 0; i < header_size(); i += 1)
    {
        (*ptr++) = h[i];
    }

    const uint8_t* c = conf_to_emit();
    for(uint32_t i = 0; i < conf_size(); i += 1)
    {
        const uint8_t v = c[i];
        for( uint32_t q = 0; q < 8 ; q += 1 )
        {
            (*ptr++) = (v >> (7-q)) & 0x01;
        }
        printf("\n");
    }

    const uint8_t* p = payload_to_emit();
    for(uint32_t i = 0; i < payload_size(); i += 1)
    {
        const uint8_t v = p[i];
        for( uint32_t q = 0; q < 8 ; q += 1 )
        {
            (*ptr++) = (v >> (7-q)) & 0x01;
        }
    }

    const uint8_t* r = crc_to_emit();         //
    for(uint32_t i = 0; i < crc_size(); i += 1)
    {
        const uint8_t v = r[i];
        for( uint32_t q = 0; q < 8 ; q += 1 )
        {
            (*ptr++) = (v >> (7-q)) & 0x01;
        }
    }
}


uint32_t Frame::frame_bits()         // payload size
{
    const uint32_t ll = header.size() + 8 * (config.size() + payload.size() + crc_field.size());
    return ll;
}

#define DISALE_WRONG_SIZE_FRAME

bool Frame::fill_frame_bits(const std::vector<uint8_t>& in_buff)
{
    const uint32_t ll = header.size() + 8 * (config.size() + payload.size() + crc_field.size());
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
    uint8_t* h = header_to_emit();
    for(uint32_t i = 0; i < header_size(); i += 1)
    {
        h[i] = (*ptr_in++);
    }

    //
    //  We fill the configuration header field with the right amount of bits
    //
    uint8_t* c = conf_to_emit();
    for(uint32_t i = 0; i < conf_size(); i += 1)
    {
        uint8_t v = 0;
        for( uint32_t q = 0; q < 8 ; q += 1 )
        {
            v = (v << 1) | (*ptr_in++);
        }
        c[i] = v;
    }

    uint32_t p_length = ((uint32_t )config[1]) + 1; // on recupere la taille du payload

    if( p_length != payload_size() )
    {
#ifndef DISALE_WRONG_SIZE_FRAME
        std::cout << "Warning in Frame::fill_frame_bits, the number of received bits is not compliant wit Frame object..." << endl;
#endif
        return false;
    }
#if 0
    if( p_length != payload_size() )
    {
        c[1]     = payload_size() - 1;
        p_length = payload_size() - 1;
    }
#endif
    uint8_t* p = payload_to_emit();
    for(uint32_t i = 0; i < p_length; i += 1)
    {
        uint8_t v = 0;
        for( uint32_t q = 0; q < 8 ; q += 1 )
        {
            v = (v << 1) | (*ptr_in++);
        }
        p[i] = v;
    }

    uint8_t* r = crc_to_emit();         //
    for(uint32_t i = 0; i < crc_size(); i += 1)
    {
        uint8_t v = 0;
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
    v = crc.execute( config     );
    v = crc.execute( payload, v );
    uint32_t* r = (uint32_t*)crc_to_emit();
    r[0] = v;
}


bool Frame::validate_crc()
{
    uint32_t v;
    v = crc.execute( config     );
    v = crc.execute( payload, v );
    uint32_t* r = (uint32_t*)crc_to_emit();
    return (r[0] == v);
}


uint8_t* Frame::header_to_emit()
{
    return header.data();
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
        case FRAME_NEW_LINE  : printf(str_FRAME_NEW_LINE  ); break;
        case FRAME_END_LINE  : printf(str_FRAME_END_LINE  ); break;
        case FRAME_EMPTY     : printf(str_FRAME_EMPTY     ); break;
        default              : printf("FRAME_UNKNOWN "    ); break;
    }
    printf(" | %3d bytes | ", ((uint32_t)c[1])+1);

    uint8_t* p = payload_to_emit();     // the pointer to the payload field
#if 0
    for(uint32_t i = 0; i < payload_size(); i += 1)
      printf("%s0x%2.2X%s ", "\033[1;33m", p[i], "\033[0m");
#else
    printf("%s0x", "\033[1;33m");
    for(uint32_t i = 0; i < payload_size(); i += 1)
        printf("%2.2X", p[i]);
    printf("%s", "\033[0m");
#endif
    printf(" | ");

    uint32_t* r = (uint32_t*)crc_to_emit();
    printf("CRC32b = %s0x%8.8X%s | ", "\033[1;32m", r[0], "\033[0m");

    if( validate_crc() == true ) printf("CRC is %sOK...%s\n", "\033[1;32m", "\033[0m");
    else printf("CRC is %sKO !!!%s\n", "\033[1;31m", "\033[0m");

}


uint8_t* Frame::conf_to_emit()
{
    return config.data();
}


uint8_t* Frame::payload_to_emit()
{
    return payload.data();
}


uint8_t* Frame::crc_to_emit()
{
    return crc_field.data();
}


uint8_t  Frame::data(const uint32_t pos)
{
    return payload[pos];
}


void Frame::data(const uint32_t pos, const int8_t value)
{
    payload[pos] = value;
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
