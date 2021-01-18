#include "FECFrame.hpp"

#include "../Processing/LDPC/Decoder/802_16e_1152x576/802_16e_1152x576_1f_m256i.hpp"

FECFrame::FECFrame(const uint32_t n, const uint8_t type)  :
    fec_enc("/Users/legal/GitHub/LDPC_decoder_kratos/inter_frame/data/codes/802.16e/r_1_2/k_576/LDPC_k_576_n_1152.generic.enc")
// payload size in bytes
{
    //
    // On code le preambule ADSB
    //
    synchro_v.push_back( 1 );  // 1
    synchro_v.push_back( 1 );  // 2
    synchro_v.push_back( 2 );  // 3
    synchro_v.push_back( 0 );  // 4
    synchro_v.push_back( 0 );  // 5
    synchro_v.push_back( 2 );  // 6
    synchro_v.push_back( 2 );  // 7
    synchro_v.push_back( 2 );  // 8

    //
    // On alloue l'espace memoire associé aux données + 24b CRC
    //

    frame_v.resize( _size_frame + _size_fec );

    ptr_synchro    = synchro_v.data();
    ptr_config     = frame_v.data ();
    ptr_payload    = ptr_config  + size_config ();
    ptr_crc        = ptr_payload + size_payload();
    ptr_fec        = ptr_crc     + size_crc    ();
}


FECFrame::~FECFrame()
{

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


void FECFrame::clr_payload()
{
    const uint32_t size = size_payload();
    for(uint32_t i = 0; i < size; i+= 1)
        ptr_payload[i] = 0;
}


uint32_t FECFrame::size_synchro()
{
    return _size_synchro;
}

uint32_t FECFrame::size_config()         // the length of the configuration in bytes
{
    return _size_config;
}

uint32_t FECFrame::size_payload()      // set payload size in bytes
{
    return _size_payload;
}

uint32_t FECFrame::size_crc()         // the length of the crc field     in bytes
{
    return _size_crc;
}

uint32_t FECFrame::size_fec()        // payload size
{
    return _size_fec;
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


void FECFrame::get_frame_bits(std::vector<uint8_t>& buff)
{
    const uint32_t ll = size_synchro() + 8 * frame_v.size();
    if( buff.size() != ll )
        throw std::runtime_error("FECFrame::get_frame_bits : the buffer size and the frame size does not match !");

    uint8_t* ptr = buff.data();

    //
    // On copie les 8 bits qui sont actuellement attribué au prologue de la trame
    //

    const uint32_t ss = size_synchro();
    for(uint32_t i = 0; i < ss; i += 1)
        (*ptr++) = synchro_v[i];

    //
    // On complete avec les données présentes dans le flux (config + payload + crc + fec)
    //

    const uint32_t full_frame = frame_v.size();
    for(uint32_t i = 0; i < full_frame; i += 1)
    {
        const uint8_t v = frame_v[i];
#pragma clang loop unroll(full)
        for( uint32_t q = 0; q < 8 ; q += 1 )
        {
            (*ptr++) = (v >> (7-q)) & 0x01;
        }
    }
}

//
// Dans cette étape on considere que les informations fournies sont des informations souples (LLR)
//
bool FECFrame::fill_frame_bits(const std::vector<uint8_t>& in_buff)
{
    const uint32_t ll = size_synchro() + 8 * frame_v.size();
    if( in_buff.size() != ll )
        throw std::runtime_error("FECFrame::fill_frame_bits : the buffer sizes do not match !");

    const uint8_t* ptr_in = in_buff.data();

    const uint32_t hh = size_synchro();
    for(uint32_t i = 0; i < hh; i += 1)
    {
        synchro_v[i] = (*ptr_in++);
    }

    //
    //  We fill the configuration header field with the right amount of bits
    //
    const uint32_t ss = frame_v.size();
    for(uint32_t i = 0; i < ss; i += 1)
    {
        uint8_t v = 0;
#pragma clang loop unroll(full)
        for( uint32_t q = 0; q < 8 ; q += 1 )
        {
            v = (v << 1) | (*ptr_in++);
        }
        frame_v[i] = v;
    }

    bool crc_ok = execute_crc();
    if( crc_ok == false )
        printf("(11) The CRC is wrong !\n");

    // On passe en mode LDPC !
    if( crc_ok == false )
    {
        const uint32_t sp = size_synchro();
        const uint32_t ll = 8 * frame_v.size();

        std::vector<int8_t > llrs( ll );
        std::vector<uint8_t> bits( ll );

        for(uint32_t i = 0; i < llrs.size(); i += 1)
            llrs[i] = ((in_buff[i + sp] << 1) - 1) * 32;

        LDPC_decoder_802_16e_1152x576 dec;
        dec.setOffset( 1 );
        dec.nIters      = 20;
        dec.s_criterion = false;

        dec.decode(llrs.data(), bits.data());

        for(uint32_t i = 0; i < ss; i += 1)
        {
            uint8_t v = 0;
#pragma clang loop unroll(full)
            for( uint32_t q = 0; q < 8 ; q += 1 )
            {
                v = (v << 1) | (*ptr_in++);
            }
            frame_v[i] = v;
        }

        crc_ok = execute_crc();
        if( crc_ok == false )
            printf("(22) The CRC is wrong !\n");
        else
            printf("(22) The CRC is now OK after FEC decoding !\n");
    }

    return true;
}


void FECFrame::compute_fec ()
{

}


void FECFrame::compute_crc ()
{
    uint32_t v;
    v = crc.execute( ptr_config, size_config() );
    v = crc.execute( ptr_payload,size_payload(), v );
    uint32_t* r = (uint32_t*)ptr_crc;
    r[0] = v;
}


bool FECFrame::execute_crc()
{
    uint32_t v;
    v = crc.execute( ptr_config, size_config() );
    v = crc.execute( ptr_payload,size_payload(), v );
    uint32_t* r = (uint32_t*)ptr_crc;
    return (r[0] == v);
}

void FECFrame::dump_frame()
{
    // On affiche la partie synchro trame

    for(uint32_t i = 0; i < size_synchro(); i += 1)
        printf("%d", synchro_v[i]);
    printf(" | ");

    // On affiche la partie relative à la configuration de la trame

    uint16_t vtype = get_config_u16( 0 );
    switch ( vtype )
    {
        case FRAME_INFOS     : printf(str_FRAME_INFOS     ); break;
        case FRAME_NEW_IMAGE : printf(str_FRAME_NEW_IMAGE ); break;
        case FRAME_END_IMAGE : printf(str_FRAME_END_IMAGE ); break;
        case FRAME_NEW_LINE  : printf(str_FRAME_NEW_LINE  ); break;
        case FRAME_END_LINE  : printf(str_FRAME_END_LINE  ); break;
        case FRAME_EMPTY     : printf(str_FRAME_EMPTY     ); break;
        default              : printf("FRAME_UNKNOWN "    ); break;
    }

    printf(" | 0x%4.4X | ", get_config_u16(1) );
    printf(" | 0x%4.4X | ", get_config_u16(2) );
    printf(" | 0x%4.4X | ", get_config_u16(3) );

    // On affiche le payload a proprement parlé

    printf("%s0x", "\033[1;33m");
    if( size_payload() <= 24 )
    {
        for(uint32_t i = 0; i < size_payload(); i += 1)
            printf("%2.2X", ptr_payload[i]);
    }else{
        for(uint32_t i = 0; i < 8; i += 1)
            printf("%2.2X", ptr_payload[i]);
        printf("........");
        for(uint32_t i = size_payload() - 8; i < size_payload(); i += 1)
            printf("%2.2X", ptr_payload[i]);
    }
    printf("%s | ", "\033[0m");

    // On affiche le la valeur du CRC qui protege toutes ces données

    const uint32_t* r = (uint32_t*)ptr_crc;
    printf("CRC32b = %s0x%8.8X%s | ", "\033[1;32m", r[0], "\033[0m");

    // On indique si le CRC est actuellement validé

    if( execute_crc() == true )
        printf("[CRC %sOK]%s\n", "\033[1;32m", "\033[0m");
    else
        printf("[CRC %sKO]%s\n", "\033[1;31m", "\033[0m");
}

/*
void FECFrame::dump_frame()
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
*/

template< typename T >
std::string int_to_hex( T i )
{
    std::stringstream stream;
    stream << std::setfill ('0') << std::setw(sizeof(T)*2) << std::hex << (uint32_t)i;
    return stream.str();
}


std::string FECFrame::to_string()
{
    std::string outp = "";
/*

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
        case FRAME_NEW_LINE  : outp += str_FRAME_NEW_LINE;  break;
        case FRAME_END_LINE  : outp += str_FRAME_END_LINE;  break;
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
*/
    return outp;
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


#include <stdio.h>

#define RED   "\x1B[31m"
#define GRN   "\x1B[32m"
#define YEL   "\x1B[33m"
#define BLU   "\x1B[34m"
#define MAG   "\x1B[35m"
#define CYN   "\x1B[36m"
#define WHT   "\x1B[37m"
#define RESET "\x1B[0m"
