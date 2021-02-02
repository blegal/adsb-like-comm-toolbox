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
    counter_frames   = 0;
    counter_frm_ok   = 0;
    counter_crc_ok_1 = 0;
    counter_crc_ok_2 = 0;
    counter_rcv_bits = 0;
    counter_snd_bits = 0;
}


uint32_t Decoder_ADBS_FEC_chain::ibuffer_size()
{
    return (2 * vec_down.size());
}


uint32_t Decoder_ADBS_FEC_chain::obuffer_size()
{
    return vec_final.size();
}


Decoder_ADBS_FEC_chain::~Decoder_ADBS_FEC_chain()
{
    std::cout << "(II) Decoder_ADBS_FEC_chain::counter_frames     = " << counter_frames   << std::endl;
    std::cout << "(II) Decoder_ADBS_FEC_chain::counter_frm_ok     = " << counter_frm_ok   << std::endl;
    std::cout << "(II) Decoder_ADBS_FEC_chain::LDPC saved  frames = " << counter_crc_ok_2 << std::endl;
    std::cout << "(II) Decoder_ADBS_FEC_chain::LDPC failed frames = " << (counter_frames - counter_frm_ok) << std::endl;
    std::cout << "(II) Decoder_ADBS_FEC_chain::counter_crc_ok_1   = " << counter_crc_ok_1 << std::endl;
    std::cout << "(II) Decoder_ADBS_FEC_chain::counter_crc_ok_2   = " << counter_crc_ok_2 << std::endl;
    std::cout << "(II) Decoder_ADBS_FEC_chain::counter_rcv_bits   = " << counter_rcv_bits << std::endl;
    std::cout << "(II) Decoder_ADBS_FEC_chain::counter_snd_bits   = " << counter_snd_bits << std::endl;
}

bool Decoder_ADBS_FEC_chain::execute(const std::vector<uint8_t>& src, std::vector<uint8_t>* dst)
{
    counter_frames   += 1;
    counter_rcv_bits += src.size();

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
        counter_frm_ok   += 1;
        counter_crc_ok_1 += 1;
        counter_snd_bits += vec_final.size();
        c_rcrc.execute( vec_pack, vec_final );
        memcpy(dst->data(), vec_final.data(), vec_final.size());
        return true;
    }
//    printf("\x1B[33m(II) First CRC check is KO => LDPC decoding\x1B[0m\n");

    //
    // Pour décoder on se base pour le moment sur des décisions dures...
    // Il faudrait peut etre faire une version HARD et SOFT de la chaine de comm.
    //
    o_ppm.execute (vec_down, vec_oppm);
    o_ppm.execute (vec_down, vec_oppm);
    o_sync.execute(vec_oppm, vec_osync );

//#define  _SOFT_DECODING_
#ifdef   _SOFT_DECODING_

    vector<int8_t> vec_soft( vec_oppm.size() );
    for(uint32_t i = 0; i < vec_soft.size(); i += 1)
    {
        int32_t diff = (int32_t)vec_down[2*i] - (int32_t)vec_down[2*i + 1];
        vec_soft[i] = 8 * diff;
    }

    vector<int8_t> vec_llrs( vec_oppm.size() - 8 );
    memcpy(vec_llrs.data(), vec_soft.data() + 8, vec_llrs.size());

    dec.execute( vec_llrs, vec_ofec ); // Hard decoding

#else
    dec.execute( vec_osync, vec_ofec ); // Hard decoding
#endif

    o_pack.execute( vec_ofec, vec_pack );

    c_rcrc.execute( vec_pack, vec_final );
    c_rcrc.execute( vec_pack, vec_final ); // src => dst

    const bool crc_2 = o_ccrc.execute( vec_pack );
    if( crc_2 == true )
    {
        counter_crc_ok_2 += 1;
        counter_frm_ok   += 1;
    }
    counter_snd_bits += vec_final.size();

    memcpy(dst->data(), vec_final.data(), vec_final.size());

    return crc_2;
}
