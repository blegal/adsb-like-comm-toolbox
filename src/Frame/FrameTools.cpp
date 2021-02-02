#include "Frame.hpp"

void dump_config( const uint16_t* ptr_16 )
{
    uint16_t type = ptr_16[0];
    switch ( type )
    {
        case FRAME_INFOS     : printf(str_FRAME_INFOS     ); break;
        case FRAME_NEW_IMAGE : printf(str_FRAME_NEW_IMAGE ); break;
        case FRAME_END_IMAGE : printf(str_FRAME_END_IMAGE ); break;
        case FRAME_NEW_LINE  : printf(str_FRAME_NEW_LINE  ); break;
        case FRAME_END_LINE  : printf(str_FRAME_END_LINE  ); break;
        case FRAME_EMPTY     : printf(str_FRAME_EMPTY     ); break;
        default              : printf("FRAME_UNKNOWN "    ); break;
    }
    printf(" | 0x%4.4X 0x%4.4X 0x%4.4X | ", ptr_16[1], ptr_16[2], ptr_16[3]);
}

void dump_payload( const uint8_t* ptr_8, const uint32_t payload_size, const uint32_t limit )
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

void dump_crc( const uint32_t* r )
{
    printf(" | ");
    printf("CRC32b = %s0x%8.8X%s", "\033[1;32m", r[0], "\033[0m");
}

void dump_frame( const std::vector<uint8_t> data )
{
    const uint16_t* ptr_16 = (const uint16_t*)data.data();
    dump_config( ptr_16 );

    const uint8_t*  ptr_8  = (const uint8_t *)data.data() + 8; // 8 octets pour la configuration
    const uint32_t  payload_size = (data.size() - 8);
    dump_payload( ptr_8, payload_size, 16 );
    printf("\n");
}

void dump_frame_crc( const std::vector<uint8_t> data )
{
    const uint16_t* ptr_16 = (const uint16_t*)data.data();
    dump_config( ptr_16 );

    const uint8_t*  ptr_8  = (const uint8_t *)data.data() + 8; // 8 octets pour la configuration
    const uint32_t  payload_size = (data.size() - 8 - 4); // -4 pour le CRC
    dump_payload( ptr_8, payload_size, 16 );

    uint32_t* r = (uint32_t*)(ptr_8 + payload_size);
    dump_crc( r );

    printf("\n");
}

void dump_frame_fec( const std::vector<uint8_t> data )
{
    const uint16_t* ptr_16 = (const uint16_t*)data.data();
    dump_config( ptr_16 );

    const uint32_t half = data.size() / 2;

    const uint8_t*  ptr_8  = (const uint8_t *)data.data() + 8; // 8 octets pour la configuration
    const uint32_t  payload_size = (half - 8);
    dump_payload( ptr_8, payload_size, 8 );

    uint32_t* r = (uint32_t*)(ptr_8 + payload_size);
    dump_crc( r );

    const uint8_t*  ptr_fec  = (const uint8_t *)data.data() + half;
    dump_payload( ptr_fec, half, 8 );

    printf("\n");
}

void dump_bits( const std::vector<uint8_t> data, const uint32_t limit = 64 )
{
    for(uint32_t i = 0; i < data.size(); i += 8)
    {
        if( (i%limit == 0) && (i != 0) ) printf("\n");
        for(uint32_t j = 0; j < 8; j += 1)
            printf("%d", data[i+j]);
        printf(" ");
    }
    printf("\n");
}

void dump_ppm_bits( const std::vector<int8_t> data, const uint32_t limit = 64 )
{
    for(uint32_t i = 0; i < data.size(); i += 16)
    {
        if( (i%limit == 0) && (i != 0) ) printf("\n");
        for(uint32_t j = 0; j < 16; j += 2)
            printf("[%3d,%3d]", data[i+j], data[i+j+1]);
        printf("   ");
    }
    printf("\n");
}

void dump_ppm_bits( const std::vector<uint8_t> data, const uint32_t limit = 64 )
{
    for(uint32_t i = 0; i < data.size(); i += 16)
    {
        if( (i%limit == 0) && (i != 0) ) printf("\n");
        for(uint32_t j = 0; j < 16; j += 2)
            printf("[%3d,%3d]", data[i+j], data[i+j+1]);
        printf("   ");
    }
    printf("\n");
}

void dump( const std::vector<int8_t> data, const uint32_t limit = 0 )
{
    uint32_t ll = (limit == 0) ? data.size() : limit;
    for(uint32_t i = 0; i < ll; i += 1)
    {
        if( (i%32 == 0) && (i != 0) ) printf("\n");
        printf("%4d ", data[i]);
    }
    printf("\n");
}

void dump( const std::vector<uint8_t> data, const uint32_t limit = 0 )
{
    uint32_t ll = (limit == 0) ? data.size() : limit;
    for(uint32_t i = 0; i < ll; i += 1)
    {
        if( (i%32 == 0) && (i != 0) ) printf("\n");
        printf("%3d ", data[i]);
    }
    printf("\n");
}
