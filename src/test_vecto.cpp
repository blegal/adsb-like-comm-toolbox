#include <cstdio>
#include <cstdlib>
#include <iostream>
#include <fstream>
#include <vector>
#include <algorithm>
#include <ctime>

#include "./vector/vectorclass.h"

#include "./Radio/Receiver/Library/ReceiverLibrary.hpp"
#include "./Processing/CplxModule/Library/CplxModuleLibrary.hpp"
#include "./Processing/Detector/Library/DetectorLibrary.hpp"

#include "./Processing/CRC32b/InsertCRC32b/InsertCRC32b.hpp"
#include "./Processing/CRC32b/CheckCRC32b/CheckCRC32b.hpp"
#include "./Processing/CRC32b/RemoveCRC32b//RemoveCRC32b.hpp"

#include "./Processing/DataPacking/BitPacking/BitPacking.hpp"
#include "./Processing/DataPacking/BitUnpacking/BitUnpacking.hpp"

#include "./Processing/ADSBSynchro/InsertADSBSynchro/InsertADSBSynchro.hpp"
#include "./Processing/ADSBSynchro/RemoveADSBSynchro/RemoveADSBSynchro.hpp"

#include "./Frame/Frame.hpp"
#include "./Frame/FECFrame.hpp"
#include "./Processing/Sampling/Down/DownSampling.hpp"
#include "./Processing/PPM/demod/PPM_demod.hpp"

#include "couleur.h"

#include "./Processing/PPM/mod/PPM_mod.hpp"
#include "./Processing/PPM/demod/PPM_demod.hpp"

#include "./Processing/IQ/Insertion/IQ_Insertion.hpp"
#include "./Processing/IQ/Removing/IQ_Removing.hpp"

#include "./Processing/LDPC/Encoder/LDPCEncoder.hpp"
#include "./Processing/LDPC/Decoder/LDPCDecoder.hpp"

#include "./Processing/Sampling/Up/UpSampling.hpp"
#include "./Processing/Sampling/Down/DownSampling.hpp"

#include "./Chains/ADBS-like/Encoder/Encoder_ADBS_like_chain.hpp"
#include "./Chains/ADBS-like/Decoder/Decoder_ADBS_like_chain.hpp"

#include "./Chains/ADBS-like-fec//Encoder/Encoder_ADBS_FEC_chain.hpp"
#include "./Chains/ADBS-like-fec/Decoder/Decoder_ADBS_FEC_chain.hpp"

#include "./Tools/Resizing/resize_vect_u8.hpp"

#define MY_SQR(a) (((int32_t)a)*((int32_t)a))

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
    const uint32_t  payload_size = (data.size() - 8);
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


int main(int argc, char *argv[])
{
    FECFrame f( 60 );

    for(uint32_t i = 0; i < f.size_config(); i += 1)
        f.set_config_u8( i + 10, i );
    f.set_config_u16( FRAME_NEW_IMAGE, 0 );
    f.set_config_u16( 640, 1 );
    f.set_config_u16( 480, 2 );
    f.set_config_u16( 0, 3 );

    for(uint32_t i = 0; i < f.size_payload(); i += 1)
        f.data_u8( i, i );

    dump_frame( f.data() );

#if 0

    vector<uint8_t> vec_crc( f.size_frame() + 4 ); // CRC 32 bits
    InsertCRC32b i_crc;
    i_crc.execute( f.data(), vec_crc ); // src => dst

    dump_frame_crc( vec_crc );

    CheckCRC32b i_ccrc;
    const bool crc_ok = i_ccrc.execute( vec_crc ); // src => dst
    if( crc_ok == true )
        printf("CheckCRC32b i_ccrc => Le calcul du CRC est valide !\n");
    else
        printf("CheckCRC32b i_ccrc => Le calcul du CRC est INVALIDE !!!\n");

    vector<uint8_t> vec_bits( 8 * vec_crc.size() ); // CRC 32 bits
    BitUnpacking i_bp;
    i_bp.execute( vec_crc, vec_bits );

    printf("Valeur des bits apres BitUnpacking\n");
    dump_bits( vec_bits, 128 );
    printf("\n");

    vector<uint8_t> vec_fec( vec_bits.size() + 576 ); // CRC 32 bits
    LDPCEncoder enc( "/Users/legal/GitHub/LDPC_decoder_kratos/inter_frame/data/codes/802.16e/r_1_2/k_576/LDPC_k_576_n_1152.generic.enc" );
    enc.execute( vec_bits, vec_fec );
    //memset(vec_fec.data(), 0, vec_fec.size());
    //memcpy(vec_fec.data(), vec_bits.data(), vec_bits.size());

    printf("Valeur des bits apres LDPCEncoder\n");
    dump_bits( vec_fec, 128 );
    printf("\n");

    vector<uint8_t> vec_sync( vec_fec.size() + 8 ); // CRC 32 bits
    InsertADSBSynchro i_sync;
    i_sync.execute( vec_fec, vec_sync );

    printf("Valeur des bits apres InsertADSBSynchro\n");
    dump_bits( vec_sync, 128 );
    printf("\n");

    vector<int8_t> vec_ppm( 2 * vec_sync.size() ); // CRC 32 bits
    PPM_mod i_ppm;
    i_ppm.execute( vec_sync, vec_ppm );

//    printf("Valeur des bits apres PPM_mod\n");
//    dump_ppm_bits( vec_ppm, 32 );
//    printf("\n");

    vector<int8_t> vec_up( 2 * vec_ppm.size() ); // CRC 32 bits
    UpSampling i_up(2);
    i_up.execute( vec_ppm, vec_up );

    vector<int8_t> vec_iq( 2 * vec_up.size() ); // CRC 32 bits
    IQ_Insertion i_iq;
    i_iq.execute( vec_up, vec_iq );


    //
    // On simule le canal et on applique le calcul du module du complexe
    //
    vector<uint8_t> vec_abs( vec_iq.size() / 2 ); // CRC 32 bits
    for(uint32_t i = 0; i < vec_abs.size(); i+= 1)
    {
        vec_abs[i] = sqrtf( MY_SQR(vec_iq[2 * i]) + MY_SQR(vec_iq[2 * i + 1]) );
    }
#else

    //
    // On teste la chaine ADSB-like sans FEC
    //

        const uint32_t length = 68; // 8 bytes pour la config et 60 pour le payload

    std::vector< int8_t> short_canal(4672);

    Encoder_ADBS_like_chain e1( length );
    e1.execute( f.data(), &short_canal );

    std::vector<uint8_t> mod_canal( short_canal.size() / 2 );
    for(uint32_t i = 0; i < mod_canal.size(); i+= 1)
    {
        mod_canal[i] = sqrtf( MY_SQR(short_canal[2 * i]) + MY_SQR(short_canal[2 * i + 1]) );
    }

    std::vector<uint8_t> sortie(length);

    Decoder_ADBS_like_chain d1( length );
    d1.execute( mod_canal, &sortie );

    FECFrame g( length );
    g.update( sortie );

    dump_frame( g.data() );


    if( g.equals( f.data() ) == true ){
        printf("\x1B[32m(II) Decoder_ADBS_like_chain system is OK\x1B[0m\n");
    }else{
        printf("\x1B[31m(II) Decoder_ADBS_like_chain system is KO\x1B[0m\n");
    }

    //
    // On teste la chaine ADSB-like sans FEC
    //
    std::vector< int8_t> long_canal(9280);

    dump_frame( f.data() );

    Encoder_ADBS_FEC_chain e2( length );
    e2.execute( f.data(), &long_canal );

    mod_canal.resize( long_canal.size() / 2 );
    for(uint32_t i = 0; i < mod_canal.size(); i+= 1)
    {
        mod_canal[i] = sqrtf( MY_SQR(long_canal[2 * i]) + MY_SQR(long_canal[2 * i + 1]) );
    }

    Decoder_ADBS_FEC_chain d2( length );
    d2.execute( mod_canal, &sortie );

    dump_frame(sortie);

    g.update( sortie );

    if( g.equals( f.data() ) == true ){
        printf("\x1B[32m(II) Decoder_ADBS_like_chain system is OK\x1B[0m\n");
    }else{
        printf("\x1B[31m(II) Decoder_ADBS_like_chain system is KO\x1B[0m\n");
    }
#endif

    return 0;
}
