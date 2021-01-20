#include "RemoveADSBSynchro.hpp"


RemoveADSBSynchro::RemoveADSBSynchro()
{

}


RemoveADSBSynchro::~RemoveADSBSynchro()
{
	
}


void RemoveADSBSynchro::execute(std::vector<uint8_t>& ibuffer, std::vector<uint8_t>& obuffer)
{
    // Le buffer de sortie doit etre 8b plus petit...
    if( obuffer.size() != (ibuffer.size() - 8) )
    {
        printf("\x1B[33m(WW) vector size was updated in RemoveADSBSynchro(%s::%d)\x1B[0m\n", __FILE__, __LINE__);
        printf("\x1B[33m(WW) -> ibuffer.size() = %lu\x1B[0m\n", ibuffer.size());
        printf("\x1B[33m(WW) -> obuffer.size() = %lu\x1B[0m\n", obuffer.size());
        obuffer.resize(ibuffer.size() - 8);
    }

    // On recopie le vecteur de bits sans le crc
    memcpy(obuffer.data(), ibuffer.data() + 8, obuffer.size());
}

