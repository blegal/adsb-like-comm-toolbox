#ifndef _InsertADSBSynchro_
#define _InsertADSBSynchro_

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <vector>
#include <cstring>

using namespace std;

class InsertADSBSynchro{
public :
    InsertADSBSynchro();

	~InsertADSBSynchro();

    void execute(const std::vector<uint8_t>& ibuffer, std::vector<uint8_t>& obuffer);
};

#endif
