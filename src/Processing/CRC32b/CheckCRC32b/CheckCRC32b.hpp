#ifndef _CheckCRC32b_
#define _CheckCRC32b_

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <vector>

#include "../CRC/CRC32b.hpp"

using namespace std;

class CheckCRC32b{
private:
    CRC32b crc;

public :
    CheckCRC32b();

	~CheckCRC32b();

    bool execute(std::vector<uint8_t>& ibuffer);
};

#endif
