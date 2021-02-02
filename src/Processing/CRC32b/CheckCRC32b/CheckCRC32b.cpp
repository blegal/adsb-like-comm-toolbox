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
//    uint32_t CRC32b::execute(const uint8_t* M8, const uint32_t bytes)
    const uint32_t v = crc.execute( ibuffer.data(), ibuffer.size() - 4 );

    const uint8_t*  ptr_1 = ibuffer.data() + ibuffer.size() - 4;
    const uint32_t* ptr_2 = (uint32_t*)ptr_1;
    const uint32_t  w     = ptr_2[0];
    return (v == w); // CRC verifié implique une valeur 0
}

