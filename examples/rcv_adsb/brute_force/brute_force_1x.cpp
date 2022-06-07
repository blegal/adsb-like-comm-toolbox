#include "brute_force_1x.hpp"
#include "tools.hpp"

bool try_brute_force_1x(vector<uint8_t>& vec_pack, vector<uint8_t>& vec_demod, vector<uint8_t>& vec_sync)
{
    const int32_t stop_1_bit = 112;
    for (int j = 0; j < stop_1_bit; j += 1)
    {
        flipbit( vec_pack.data(), j );
        const bool crc_brute_1x = check_crc<112 / 8>( vec_pack.data() );
        if (crc_brute_1x == true)
        {
            vec_demod[j + 8] = !vec_demod[j + 8];       // On inverse le bit
            vec_sync [j    ] = !vec_sync [j    ];       // On inverse le bit
            return true;
        }
        flipbit( vec_pack.data(), j );
    }
    return false;
}
