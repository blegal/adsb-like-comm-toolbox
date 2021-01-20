#ifndef _Decoder_chain_
#define _Decoder_chain_

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <vector>

#include "../../../Processing/CRC32b/RemoveCRC32b/RemoveCRC32b.hpp"
#include "../../../Processing/CRC32b/CheckCRC32b/CheckCRC32b.hpp"
#include "../../../Processing/DataPacking/BitPacking/BitPacking.hpp"
#include "../../../Processing/LDPC/Decoder/LDPCDecoder.hpp"
#include "../../../Processing/ADSBSynchro/RemoveADSBSynchro/RemoveADSBSynchro.hpp"
#include "../../../Processing/PPM/demod/PPM_demod.hpp"
#include "../../../Processing/Sampling/Down/DownSampling.hpp"

#include "../../../Tools/Resizing/resize_vect_u8.hpp"


using namespace std;

class Decoder_chain{
public :
    Decoder_chain();

    virtual ~Decoder_chain();

    virtual bool execute(const std::vector<uint8_t>& src, std::vector<uint8_t>* dst);
};

#endif
