#ifndef _CRC32b_
#define _CRC32b_

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <vector>
#include <cstring>
#include <cassert>


class CRC32b{
public :
    CRC32b();
	~CRC32b();

    uint32_t execute(const uint8_t* M8, const uint32_t bytes);
    uint32_t execute(const uint8_t* M8, const uint32_t bytes, uint32_t R);

    uint32_t execute(const std::vector<uint8_t>& v);
    uint32_t execute(const std::vector<uint8_t>& v, uint32_t R);
};

#endif