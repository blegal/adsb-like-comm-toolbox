#include "Encoder_ADBS_like_chain.hpp"


Encoder_ADBS_like_chain::Encoder_ADBS_like_chain(const uint32_t stream_length) :
    vec_crc (           (stream_length + 4)       ),
    vec_bits(      (8 * (stream_length + 4))      ),
    vec_sync(     ((8 * (stream_length + 4)) + 8) ),
    vec_ppm ( 2 * ((8 * (stream_length + 4)) + 8) ),
    vec_up  ( 4 * ((8 * (stream_length + 4)) + 8) ),
    vec_iq  ( 8 * ((8 * (stream_length + 4)) + 8) ),
    i_up(2)
{

}


Encoder_ADBS_like_chain::~Encoder_ADBS_like_chain()
{
	
}


void Encoder_ADBS_like_chain::execute(const std::vector<uint8_t>& src, std::vector<int8_t>* dst)
{
    i_crc.execute (src,      vec_crc );
    i_bp.execute  (vec_crc,  vec_bits);
    i_sync.execute(vec_bits, vec_sync);
    i_ppm.execute (vec_sync, vec_ppm);
    i_up.execute  (vec_ppm,   vec_up);
    i_iq.execute  (vec_up,       vec_iq);

    // Le buffer de sortie doit etre 2x plus grand...
    if( dst->size() != vec_iq.size() )
    {
        printf("\x1B[33m(WW) vector size was updated in UpSampling(%s::%d)\x1B[0m\n", __FILE__, __LINE__);
        printf("\x1B[33m(WW) -> ibuffer.size() = %lu\x1B[0m\n", vec_iq.size());
        printf("\x1B[33m(WW) -> obuffer.size() = %lu\x1B[0m\n", dst->size());
        dst->resize( vec_iq.size() );
    }

    memcpy(dst->data(), vec_iq.data(), vec_iq.size());
}
