#ifndef _InsertCRC32b_
#define _InsertCRC32b_

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <vector>

#include "../CRC/CRC32b.hpp"

using namespace std;

class InsertCRC32b{
private:
    CRC32b crc;

public :
    InsertCRC32b();

	~InsertCRC32b();

    void execute(const std::vector<uint8_t>& ibuffer, std::vector<uint8_t>& obuffer);
};

#endif
