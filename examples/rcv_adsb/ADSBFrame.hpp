#ifndef _ADSBFrame_
#define _ADSBFrame_

class ADSBFrame {
private:

public:
    vector<uint8_t> vec_sync;
    vector<uint8_t> vec_pack;

public:

    ADSBFrame( ) : vec_sync(112), vec_pack( 14)
    {

    }

    int32_t df( ) const
    {
        const int32_t df_value   = pack_bits(vec_sync.data(), 5);
        return df_value;
    }

    int32_t type( ) const
    {
        const int32_t type_frame = pack_bits(vec_sync.data() + 32, 5);
        return type_frame;
    }

    int32_t oaci() const
    {
        const int32_t oaci_value = pack_bits(vec_sync.data() + 8, 24);
        return oaci_value;
    }

    int32_t airc() const
    {
        const int32_t type_airc = pack_bits(vec_sync.data() + 37, 3);
        return type_airc;
    }

    int32_t aricraft_type() const
    {
        const int32_t type_frame   = type();
        const int32_t type_airc    = airc();
        const int32_t typeAricraft = toCode( type_frame, type_airc );
        return typeAricraft;
    }

    void name(char plane_name[9]) const
    {
        const char lut[] = "#ABCDEFGHIJKLMNOPQRSTUVWXYZ##### ###############0123456789######";
        plane_name[0] = lut[ pack_bits(vec_sync.data() + 40, 6) ];
        plane_name[1] = lut[ pack_bits(vec_sync.data() + 46, 6) ];
        plane_name[2] = lut[ pack_bits(vec_sync.data() + 52, 6) ];
        plane_name[3] = lut[ pack_bits(vec_sync.data() + 58, 6) ];
        plane_name[4] = lut[ pack_bits(vec_sync.data() + 64, 6) ];
        plane_name[5] = lut[ pack_bits(vec_sync.data() + 70, 6) ];
        plane_name[6] = lut[ pack_bits(vec_sync.data() + 76, 6) ];
        plane_name[7] = lut[ pack_bits(vec_sync.data() + 82, 6) ];
        plane_name[8] = 0;
    }

    std::string name( ) const
    {
        std::string plane_name = "--------";
        const char lut[] = "#ABCDEFGHIJKLMNOPQRSTUVWXYZ##### ###############0123456789######";
        plane_name[0] = lut[ pack_bits(vec_sync.data() + 40, 6) ];
        plane_name[1] = lut[ pack_bits(vec_sync.data() + 46, 6) ];
        plane_name[2] = lut[ pack_bits(vec_sync.data() + 52, 6) ];
        plane_name[3] = lut[ pack_bits(vec_sync.data() + 58, 6) ];
        plane_name[4] = lut[ pack_bits(vec_sync.data() + 64, 6) ];
        plane_name[5] = lut[ pack_bits(vec_sync.data() + 70, 6) ];
        plane_name[6] = lut[ pack_bits(vec_sync.data() + 76, 6) ];
        plane_name[7] = lut[ pack_bits(vec_sync.data() + 82, 6) ];
        plane_name[8] = 0;
        return plane_name;
    }

    int32_t altitude( ) const
    {
        const int32_t type_frame = type();
        if ((type_frame >= 20) && (type_frame <= 22) ) {
            return altitude_gnss();
        }else{
            return altitude_baro();
        }
    }

    int32_t altitude_baro( ) const
    {
        const int32_t upper = pack_bits(vec_sync.data() + 40, 7);
        const int32_t incr  = pack_bits(vec_sync.data() + 47, 1);
        const int32_t lower = pack_bits(vec_sync.data() + 48, 4);
        int32_t altitude = (upper << 4) | lower;
        altitude = ( incr == 1) ? (altitude * 25 - 1000) : -1;
        return altitude;
    }

    int32_t altitude_gnss( ) const
    {
        int m_bit = vec_pack[3] & (1<<6);
        int q_bit = vec_pack[3] & (1<<4);
        if (!m_bit) {
            if (q_bit) {
                /* N is the 11 bit integer resulting from the removal of bit
                 * Q and M */
                int n = ((vec_pack[2]&31)<<6) |
                        ((vec_pack[3]&0x80)>>2) |
                        ((vec_pack[3]&0x20)>>1) |
                         (vec_pack[3]&15);
                /* The final altitude is due to the resulting number multiplied
                 * by 25, minus 1000. */
                return n * 25 - 1000;
            } else {
                /* TODO: Implement altitude where Q=0 and M=0 */
                return -1;
            }
        } else {
            /* TODO: Implement altitude when meter unit is selected. */
            return -1;
        }
    }

    int32_t odd_frame( ) const {
        return vec_pack[6] & (1<<2);
    }

    int32_t latitude(const float ref_latitude, const float ref_longitude) const
    {
        const int32_t CPR_format  = pack_bits      (vec_sync.data() + 53, 1);
        const float f_latitude    = pack_bits_float(vec_sync.data() + 54, 17);//(float)enc_latitude  / 131072.0; // divise par 2^17
        const float final_lat     = ComputeLatitude (f_latitude,  ref_latitude,                CPR_format);
        return final_lat;
    }

    int32_t longitude(const float ref_latitude, const float ref_longitude) const
    {
        const int32_t CPR_format  = pack_bits      (vec_sync.data() + 53, 1);
        const float f_latitude    = pack_bits_float(vec_sync.data() + 54, 17);//(float)enc_latitude  / 131072.0; // divise par 2^17
        const float f_longitude   = pack_bits_float(vec_sync.data() + 71, 17);//(float)enc_longitude / 131072.0; // divise par 2^17
        const float final_lat     = ComputeLatitude (f_latitude,  ref_latitude,                CPR_format);
        const float final_lon     = ComputeLongitude(f_longitude, final_lat,    ref_longitude, CPR_format);
        return final_lon;
    }

};

#endif