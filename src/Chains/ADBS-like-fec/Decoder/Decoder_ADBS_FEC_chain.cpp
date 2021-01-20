#include "Decoder_ADBS_FEC_chain.hpp"


Decoder_ADBS_FEC_chain::Decoder_ADBS_FEC_chain(const uint32_t stream_length) :
    vec_down ( 2 * ((8 * (stream_length + 4) + 576) + 8) ), // CRC 32 bits
    vec_oppm (     ((8 * (stream_length + 4) + 576) + 8) ), // CRC 32 bits
    vec_osync(      (8 * (stream_length + 4) + 576)      ), // CRC 32 bits
    vec_ofec (      (8 * (stream_length + 4)      )      ), // CRC 32 bits
    vec_pack (           (stream_length + 4)             ), // CRC 32 bits
    vec_final(           (stream_length)                 ), // CRC 32 bits
    o_down(2)
{

}


Decoder_ADBS_FEC_chain::~Decoder_ADBS_FEC_chain()
{
	
}

bool Decoder_ADBS_FEC_chain::execute(const std::vector<uint8_t>& src, std::vector<uint8_t>* dst)
{
    if( dst->size() != vec_final.size() )
    {
        printf("\x1B[33m(WW) vector size was updated in Decoder_ADBS_FEC_chain(%s::%d)\x1B[0m\n", __FILE__, __LINE__);
        printf("\x1B[33m(WW) -> ibuffer.size() = %lu\x1B[0m\n", vec_final.size());
        printf("\x1B[33m(WW) -> obuffer.size() = %lu\x1B[0m\n", dst->size());
        dst->resize( vec_final.size() );
    }

    o_down.execute( src, vec_down );

    o_ppm.execute (vec_down, vec_oppm);

    o_sync.execute( vec_oppm, vec_osync );

    resize_vect_u8::execute( &vec_osync, &vec_ofec );

    o_pack.execute( vec_ofec, vec_pack );

    const bool crc_v = o_ccrc.execute( vec_pack ); // src => dst
    if( crc_v == true )
    {
        c_rcrc.execute( vec_pack, vec_final );
        memcpy(dst->data(), vec_final.data(), vec_final.size());
        return true;
    }

    //
    // Pour décoder on se base pour le moment sur des décisions dures...
    // Il faudrait peut etre faire une version HARD et SOFT de la chaine de comm.
    //
    dec.execute   ( vec_osync, vec_ofec );
    o_pack.execute( vec_ofec, vec_pack );
    c_rcrc.execute( vec_pack, vec_final ); // src => dst

    const bool crc_2 = o_ccrc.execute( vec_pack );

    memcpy(dst->data(), vec_final.data(), vec_final.size());

    return crc_2;
}
