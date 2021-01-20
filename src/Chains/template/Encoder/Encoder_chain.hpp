#ifndef _Encoder_chain_
#define _Encoder_chain_

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

class Encoder_chain{
public :
    Encoder_chain();

    virtual ~Encoder_chain();

    virtual void execute(const std::vector<uint8_t>& src, std::vector<int8_t>* dst);
};

#endif
