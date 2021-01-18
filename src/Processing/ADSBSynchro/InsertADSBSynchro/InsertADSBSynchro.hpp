#ifndef _InsertADSBSynchro_
#define _InsertADSBSynchro_

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <vector>

using namespace std;

class InsertADSBSynchro{
private:
    CRC32b crc;

public :
    InsertADSBSynchro();

	~InsertADSBSynchro();

    void execute(std::vector<uint8_t>& ibuffer, std::vector<uint8_t>& obuffer);
};

#endif
