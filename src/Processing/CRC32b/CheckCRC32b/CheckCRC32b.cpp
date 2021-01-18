#include "CheckCRC32b.hpp"


CheckCRC32b::CheckCRC32b()
{

}


CheckCRC32b::~CheckCRC32b()
{
	
}


bool CheckCRC32b::execute(std::vector<uint8_t>& ibuffer)
{
    // On calcule la valeur du crc
    const uint32_t v = crc.execute( ibuffer );

    return (v == 0); // CRC verifié implique une valeur 0
}

