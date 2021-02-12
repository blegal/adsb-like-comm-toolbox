#ifndef _MLType_
#define _MLType_

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <vector>
#include <cstring>
#include <cassert>
#include "../frame_type.hpp"

class MLType{
public :
    MLType(const bool fast_m = false);
	~MLType();

    uint8_t execute( uint8_t v );

private:
    bool    fast_mode;
    uint8_t execute_slow( uint8_t v );
    uint8_t execute_fast( uint8_t v );

          uint8_t* lookup_fast;
    const uint8_t  lookup_type[6] = {
            FRAME_INFOS,
            FRAME_NEW_IMAGE,
            FRAME_END_IMAGE,
            // FRAME_NEW_LINE,
            // FRAME_END_LINE,
            FRAME_EMPTY
    };

};

#endif
