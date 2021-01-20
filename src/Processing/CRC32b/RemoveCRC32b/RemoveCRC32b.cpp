#include "RemoveCRC32b.hpp"


RemoveCRC32b::RemoveCRC32b()
{

}


RemoveCRC32b::~RemoveCRC32b()
{
	
}


void RemoveCRC32b::execute(std::vector<uint8_t>& ibuffer, std::vector<uint8_t>& obuffer)
{
    // Le buffer de sortie doit etre 32b plus petit...
    if( obuffer.size() != (ibuffer.size() - 4) )
    {
        printf("\x1B[33m(WW) vector size was updated in RemoveCRC32b(%s::%d)\x1B[0m\n", __FILE__, __LINE__);
        obuffer.resize(ibuffer.size() - 4);
    }

    // On recopie le vecteur de bits sans le crc
    memcpy(obuffer.data(), ibuffer.data(), obuffer.size());
}

