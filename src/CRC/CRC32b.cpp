#include "CRC32b.hpp"

CRC32b::CRC32b()    // payload size
{

}


CRC32b::~CRC32b()
{

}


uint32_t CRC32b::execute( std::vector<uint8_t>& v )
{
	const uint8_t* M8    = v.data();
    const uint32_t bytes = v.size();
	uint32_t R = 0;
	for (uint32_t i = 0; i < bytes; ++i) {
		R ^= M8[i];
		for (uint32_t j = 0; j < 8; ++j) {
			R = R & 1 ? (R >> 1) ^ P : R >> 1;
		}
	}
	return R;
}