#include "Decoder_ADBS_like_chain.hpp"


Decoder_ADBS_like_chain::Decoder_ADBS_like_chain(const uint32_t stream_length) :
    vec_down ( 2 * ((stream_length + 4) * 8 + 8) ), // CRC 32 bits
    vec_oppm (     ((stream_length + 4) * 8 + 8) ), // CRC 32 bits
    vec_osync(      (stream_length + 4) * 8      ), // CRC 32 bits
    vec_pack (      (stream_length + 4)          ), // CRC 32 bits
    vec_final( (stream_length) ), // CRC 32 bits
    o_down(2)
{
    vec_final.resize(stream_length);
    vec_pack.resize (     vec_final.size() + 4);
    vec_osync.resize( 8 * vec_pack.size()     );
    vec_oppm.resize (     vec_osync.size() + 8);
    vec_down.resize ( 2 * vec_oppm.size()     );

    /*
    printf("\x1B[33m(WW) stream_length = %lu\x1B[0m\n", stream_length);
    printf("\x1B[33m(WW) vec_down.size () = %lu\x1B[0m\n", vec_down.size());
    printf("\x1B[33m(WW) vec_oppm.size () = %lu\x1B[0m\n", vec_oppm.size());
    printf("\x1B[33m(WW) vec_osync.size() = %lu\x1B[0m\n", vec_osync.size());
    printf("\x1B[33m(WW) vec_pack.size () = %lu\x1B[0m\n", vec_pack.size());
    printf("\x1B[33m(WW) vec_final.size() = %lu\x1B[0m\n", vec_final.size());
     */
}


uint32_t Decoder_ADBS_like_chain::ibuffer_size()
{
    return (2 * vec_down.size());
}


uint32_t Decoder_ADBS_like_chain::obuffer_size()
{
    return vec_final.size();
}


Decoder_ADBS_like_chain::~Decoder_ADBS_like_chain()
{

}


bool Decoder_ADBS_like_chain::execute(const std::vector<uint8_t>& src, std::vector<uint8_t>* dst)
{
    // Le buffer de sortie doit etre 2x plus grand...
    if( dst->size() != vec_final.size() )
    {
        printf("\x1B[33m(WW) vector size was updated in Decoder_ADBS_like_chain(%s::%d)\x1B[0m\n", __FILE__, __LINE__);
        printf("\x1B[33m(WW) -> vec_final.size() = %lu\x1B[0m\n", vec_final.size());
        printf("\x1B[33m(WW) -> dst->size()      = %lu\x1B[0m\n", dst->size());
        dst->resize( vec_final.size() );
    }

    o_down.execute(src,       vec_down );
    o_ppm.execute (vec_down,  vec_oppm );
    o_sync.execute(vec_oppm,  vec_osync);
    o_pack.execute(vec_osync, vec_pack );

    const bool crc_v = o_ccrc.execute( vec_pack ); // src => dst

//    dump_frame_crc( vec_pack );

    c_rcrc.execute( vec_pack, vec_final );     // src => dst

//    dump_frame( vec_pack );

    memcpy(dst->data(), vec_final.data(), vec_final.size());

    return crc_v;
}
