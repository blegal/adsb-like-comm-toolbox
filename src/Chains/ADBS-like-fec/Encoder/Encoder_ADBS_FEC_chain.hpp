#ifndef _Encoder_ADBS_FEC_chain_
#define _Encoder_ADBS_FEC_chain_

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <vector>

#include "../../../Frame/FECFrame.hpp"

#include "../../../Processing/CRC32b/InsertCRC32b/InsertCRC32b.hpp"
#include "../../../Processing/DataPacking//BitUnpacking/BitUnpacking.hpp"
#include "../../../Processing/LDPC/Encoder/LDPCEncoder.hpp"
#include "../../../Processing/ADSBSynchro/InsertADSBSynchro/InsertADSBSynchro.hpp"
#include "../../../Processing/PPM/mod/PPM_mod.hpp"
#include "../../../Processing/Sampling/Up/UpSampling.hpp"
#include "../../../Processing/IQ/Insertion/IQ_Insertion.hpp"

using namespace std;

class Encoder_ADBS_FEC_chain{
private:
    vector<uint8_t> vec_crc;
    vector<uint8_t> vec_bits;
    vector<uint8_t> vec_fec;
    vector<uint8_t> vec_sync;
    vector< int8_t> vec_ppm;
    vector< int8_t> vec_up;
    vector< int8_t> vec_iq;

    InsertCRC32b      i_crc;
    BitUnpacking      i_bp;
    LDPCEncoder       enc;
    InsertADSBSynchro i_sync;
    PPM_mod           i_ppm;
    UpSampling        i_up;
    IQ_Insertion      i_iq;

public :
    Encoder_ADBS_FEC_chain(const uint32_t stream_length);

	~Encoder_ADBS_FEC_chain();

    void execute(const std::vector<uint8_t>& src, std::vector<int8_t>* dst);

    uint32_t ibuffer_size();
    uint32_t obuffer_size();
};

#endif
