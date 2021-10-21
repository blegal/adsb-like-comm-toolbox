#include "brute_force_3x.hpp"
#include "tools.hpp"

bool try_brute_force_3x(vector<uint8_t>& vec_pack, vector<uint8_t>& vec_demod, vector<uint8_t>& vec_sync)
{
    const int32_t stop_1_bit = 112;      // On teste tous les bits la premiere fois
    const int32_t stop_2_bit = 112 - 24; // On ne modifie au total qu'un seul bits du CRC
    const int32_t stop_3_bit = 112 - 24; // On ne modifie au total qu'un seul bits du CRC
    for (int ii = 0; ii < stop_1_bit; ii += 1)
    {
        flipbit( vec_pack.data(), ii );
        for (int jj = ii + 1; jj < stop_2_bit; jj += 1)
        {
            flipbit( vec_pack.data(), jj );
            for (int kk = jj + 1; kk < stop_3_bit; kk += 1)
            {
                flipbit( vec_pack.data(), kk );
                const bool crc_brute_2x  = check_crc<112 / 8>( vec_pack.data() );
                if (crc_brute_2x == true)
                {
                    vec_demod[ii + 8] = !vec_demod[ii + 8]; // On inverse le bit
                    vec_sync [ii    ] = !vec_sync [ii    ]; // On inverse le bit
                    vec_demod[jj + 8] = !vec_demod[jj + 8]; // On inverse le bit
                    vec_sync [jj    ] = !vec_sync [jj    ]; // On inverse le bit
                    vec_demod[kk + 8] = !vec_demod[kk + 8]; // On inverse le bit
                    vec_sync [kk    ] = !vec_sync [kk    ]; // On inverse le bit
                    return true;
                }
                flipbit( vec_pack.data(), kk );
            }
            flipbit( vec_pack.data(), jj );
        }
        flipbit( vec_pack.data(), ii );
    }
    return false;
}
