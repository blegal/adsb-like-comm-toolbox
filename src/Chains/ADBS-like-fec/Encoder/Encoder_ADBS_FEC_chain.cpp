#include "Encoder_ADBS_FEC_chain.hpp"


Encoder_ADBS_FEC_chain::Encoder_ADBS_FEC_chain(const uint32_t stream_length) :
    vec_crc (           (stream_length + 4)             ),
    vec_bits(      (8 * (stream_length + 4))            ),
    vec_fec (      (8 * (stream_length + 4) + 576)      ),
    vec_sync(     ((8 * (stream_length + 4) + 576) + 8) ),
    vec_ppm ( 2 * ((8 * (stream_length + 4) + 576) + 8) ),
    vec_up  ( 4 * ((8 * (stream_length + 4) + 576) + 8) ),
    vec_iq  ( 8 * ((8 * (stream_length + 4) + 576) + 8) ),
    enc( "/Users/legal/GitHub/LDPC_decoder_kratos/inter_frame/data/codes/802.16e/r_1_2/k_576/LDPC_k_576_n_1152.generic.enc" ),
    i_up(2)
{

}


Encoder_ADBS_FEC_chain::~Encoder_ADBS_FEC_chain()
{
	
}


void Encoder_ADBS_FEC_chain::execute(const std::vector<uint8_t>& src, std::vector<int8_t>* dst)
{
    if( dst->size() != vec_iq.size() )
    {
        printf("\x1B[33m(WW) vector size was updated in Encoder_ADBS_FEC_chain(%s::%d)\x1B[0m\n", __FILE__, __LINE__);
        printf("\x1B[33m(WW) -> ibuffer.size() = %lu\x1B[0m\n", vec_iq.size());
        printf("\x1B[33m(WW) -> obuffer.size() = %lu\x1B[0m\n", dst->size());
        dst->resize( vec_iq.size() );
    }

    i_crc.execute (src,      vec_crc );
    i_bp.execute  (vec_crc,  vec_bits);
    enc.execute   (vec_bits, vec_fec);
    i_sync.execute(vec_fec, vec_sync);
    i_ppm.execute (vec_sync,vec_ppm);
    i_up.execute  (vec_ppm, vec_up);
    i_iq.execute  (vec_up, vec_iq);

    memcpy(dst->data(), vec_iq.data(), vec_iq.size());
}

