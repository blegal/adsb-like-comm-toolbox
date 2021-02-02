#ifndef _RemoveCRC32b_
#define _RemoveCRC32b_

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <cmath>
#include <vector>

using namespace std;

class RemoveCRC32b{
public :
    RemoveCRC32b();

	~RemoveCRC32b();

    void execute(std::vector<uint8_t>& ibuffer, std::vector<uint8_t>& obuffer);
};

#endif
