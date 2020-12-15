#include "MLType.hpp"
#include <x86intrin.h>

uint8_t execute( uint8_t v );

MLType::MLType(const bool fast_m)    // payload size
{
    fast_mode   = fast_m;
    lookup_fast = nullptr;

    if( fast_mode == true )
    {
        lookup_fast = new uint8_t[256];
        for(uint32_t i = 0; i < 256; i += 1)
        {
            lookup_fast[i] = execute_slow( i );
        }
    }
}


MLType::~MLType()
{
    if( lookup_fast != nullptr )
    {
        delete[] lookup_fast;
    }
}


uint8_t MLType::execute( uint8_t value )
{
    if( fast_mode == true )
        return execute_fast( value );
    else
        return execute_slow( value );
}


uint8_t MLType::execute_fast( uint8_t value )
{
    return lookup_fast[ value ];
}


uint8_t MLType::execute_slow( uint8_t value )
{
    uint8_t score[6];
    score[0] = _popcnt32( value & FRAME_INFOS     );
    score[1] = _popcnt32( value & FRAME_NEW_IMAGE );
    score[2] = _popcnt32( value & FRAME_END_IMAGE );
    score[3] = _popcnt32( value & FRAME_NEW_LINE  );
    score[4] = _popcnt32( value & FRAME_END_LINE  );
    score[5] = _popcnt32( value & FRAME_EMPTY     );
#if 0
    for(uint32_t i = 0; i < 6; i += 1)
        {
            printf("score[%d] = %d\n", i, score[i]);
        }
#endif
    uint8_t vmax =  0;
    uint8_t nmax =  0;
    uint8_t pmax = -1;
    for(uint32_t i = 0; i < 6; i += 1)
    {
        vmax  = ( score[i] >= vmax ) ? score[i] : vmax;
    }

    for(uint32_t i = 0; i < 6; i += 1)
    {
        pmax  = ( score[i] == vmax ) ? i : pmax;
        nmax += ( score[i] == vmax );
    }

#if 0
    printf("vmax = [%d], pmax = [%d] : nmax [%d]\n", vmax, pmax, nmax);
#endif
    return (nmax == 1) ? lookup_type[pmax] : 0xFF;
}
