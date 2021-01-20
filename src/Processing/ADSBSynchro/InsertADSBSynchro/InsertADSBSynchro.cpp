#include "InsertADSBSynchro.hpp"


InsertADSBSynchro::InsertADSBSynchro()
{

}


InsertADSBSynchro::~InsertADSBSynchro()
{
	
}


void InsertADSBSynchro::execute(const std::vector<uint8_t>& ibuffer, std::vector<uint8_t>& obuffer)
{
    // Le buffer de sortie doit etre 9b plus grand...
    if( obuffer.size() != (ibuffer.size() + 8) )
    {
        printf("\x1B[33m(WW) vector size was updated in InsertADSBSynchro(%s::%d)\x1B[0m\n", __FILE__, __LINE__);
        printf("\x1B[33m(WW) -> ibuffer.size() = %lu\x1B[0m\n", ibuffer.size());
        printf("\x1B[33m(WW) -> obuffer.size() = %lu\x1B[0m\n", obuffer.size());
        obuffer.resize(ibuffer.size() + 8);
    }

    // On recopie le vecteur de bits
    obuffer[0] = 1;  // 1
    obuffer[1] = 1;  // 2
    obuffer[2] = 2;  // 3
    obuffer[3] = 0;  // 4
    obuffer[4] = 0;  // 5
    obuffer[5] = 2;  // 6
    obuffer[6] = 2;  // 7
    obuffer[7] = 2;  // 8
    
    memcpy(obuffer.data() + 8, ibuffer.data(), ibuffer.size());
}

