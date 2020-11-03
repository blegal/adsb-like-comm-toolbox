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

    uint32_t execute( std::vector<uint8_t>& v );
};

#endif