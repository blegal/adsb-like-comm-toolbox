#include "Decoder_ADBS_like_chain.hpp"


Decoder_ADBS_like_chain::Decoder_ADBS_like_chain(const uint32_t stream_length) :
    vec_down ( 2 * ((stream_length + 4) * 8 + 8) ), // CRC 32 bits
    vec_oppm (     ((stream_length + 4) * 8 + 8) ), // CRC 32 bits
    vec_osync(      (stream_length + 4) * 8      ), // CRC 32 bits
    vec_pack (      (stream_length + 4)          ), // CRC 32 bits
    vec_final( (stream_length) ), // CRC 32 bits
    o_down(2)
{

}


Decoder_ADBS_like_chain::~Decoder_ADBS_like_chain()
{
	
}


bool Decoder_ADBS_like_chain::execute(const std::vector<uint8_t>& src, std::vector<uint8_t>* dst)
{
    o_down.execute(src,       vec_down );
    o_ppm.execute (vec_down,  vec_oppm );
    o_sync.execute(vec_oppm,  vec_osync);
    o_pack.execute(vec_osync, vec_pack );

    const bool crc_v = o_ccrc.execute( vec_pack ); // src => dst

    c_rcrc.execute( vec_pack, vec_final );     // src => dst

    // Le buffer de sortie doit etre 2x plus grand...
    if( dst->size() != vec_final.size() )
    {
        printf("\x1B[33m(WW) vector size was updated in Decoder_ADBS_like_chain(%s::%d)\x1B[0m\n", __FILE__, __LINE__);
        dst->resize( vec_final.size() );
    }

    memcpy(dst->data(), vec_final.data(), vec_final.size());

    return crc_v;
}
