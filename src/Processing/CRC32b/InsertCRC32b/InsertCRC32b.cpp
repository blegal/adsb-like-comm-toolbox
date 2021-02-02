#include "InsertCRC32b.hpp"


InsertCRC32b::InsertCRC32b()
{

}


InsertCRC32b::~InsertCRC32b()
{
	
}


void InsertCRC32b::execute(const std::vector<uint8_t>& ibuffer, std::vector<uint8_t>& obuffer)
{
    // Le buffer de sortie doit etre 32b plus grand...
    if( ibuffer.size() != (obuffer.size()-4) )
    {
        printf("\x1B[33m(WW) vector size was updated in InsertCRC32b(%s::%d)\x1B[0m\n", __FILE__, __LINE__);
        printf("\x1B[33m(WW) -> ibuffer.size() = %lu\x1B[0m\n", ibuffer.size());
        printf("\x1B[33m(WW) -> obuffer.size() = %lu\x1B[0m\n", obuffer.size());
        obuffer.resize(ibuffer.size() + 4);
    }

    // On calcule la valeur du crc
    const uint32_t v = crc.execute( ibuffer );

    // On recopie le vecteur de bits
    memcpy(obuffer.data(), ibuffer.data(), ibuffer.size());

    // On copie la valeur du crc a la fin de la trame
    uint32_t* r = (uint32_t*)(obuffer.data() + ibuffer.size());
    r[0] = v;
}

