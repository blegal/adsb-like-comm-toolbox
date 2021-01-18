#include "InsertCRC32b.hpp"


InsertCRC32b::InsertCRC32b()
{

}


InsertCRC32b::~InsertCRC32b()
{
	
}


void InsertCRC32b::execute(std::vector<uint8_t>& ibuffer, std::vector<uint8_t>& obuffer)
{
    // Le buffer de sortie doit etre 32b plus grand...
    if( obuffer.size() != (ibuffer.size() + 4) )
        obuffer.resize(ibuffer.size() + 4);

    // On calcule la valeur du crc
    const uint32_t v = crc.execute( ibuffer );

    // On recopie le vecteur de bits
    memcpy(obuffer.data(), ibuffer.data(), ibuffer.size());

    // On copie la valeur du crc a la fin de la trame
    uint32_t* r = (uint32_t*)(obuffer.data(), ibuffer.size());
    r[0] = v;
}

