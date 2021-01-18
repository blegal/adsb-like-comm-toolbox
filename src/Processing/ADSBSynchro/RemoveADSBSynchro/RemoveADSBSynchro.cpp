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
        obuffer.resize(ibuffer.size() - 8);

    // On recopie le vecteur de bits sans le crc
    memcpy(obuffer.data(), ibuffer.data() + 8, obuffer.size());
}

