#ifndef _Avion_
#define _Avion_

class Avion {
private:
    float altitude;

    float speed_h;      // vitesse horizontale
    float speed_v;      // vitesse verticale
    float angle;        // angle de l'avion

    float dist_min;     // distance minimum mesurée
    float dist_max;     // distance maximum mesurée
    float dist_curr;    // distance actuelle de l'avion

    int32_t OACI;       // identifiant hexadecimal
    int32_t type;       // type de l'avion
    char name[9];       // nom de l'avion
    bool GNSS;          // informations GNSS ?

    int32_t updates;    // nombre de messages recus

    std::chrono::time_point<std::chrono::system_clock> lastUpdate;
    bool modified;


public:

    std::vector<float> list_long;
    std::vector<float> list_lat;
    std::vector<int32_t> list_altitude;

    float last_score;
    float mini_score;
    float maxi_score;

public:

    Avion(const int32_t _OACI) {
        speed_h   = 0.0f;
        speed_v   = 0.0f;
        angle     = 0.0f;

        dist_min  = 0.0f;
        dist_max  = 0.0f;
        dist_curr = 0.0f;

        OACI      = _OACI;
        updates   = 0;
        altitude  = 0.0f;
        modified  = false;
        GNSS      = false;
        type      = 0;       // Le type de l'avion ou du moins de l'objet volant !

        mini_score = 1.0f;
        maxi_score = 0.0f;
        last_score = 0.0f;

        for (uint32_t i = 0; i < 8; i += 1)
            name[i] = '-';
        name[8] = 0;
    }

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    void set_GNSS_mode(const bool value)
    {
        GNSS = value;
    }

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    void update_distance()
    {
        const float lat = get_latitude();
        const float lon = get_longitude();
        dist_curr       = distance(lat, lon, 44.820783, -0.501887);
        if( dist_max != 0 ){
            dist_max        = ( dist_max > dist_curr ) ? dist_max : dist_curr;
            dist_min        = ( dist_min < dist_curr ) ? dist_min : dist_curr;
        }else{
            dist_max        = dist_curr;
            dist_min        = dist_curr;
        }
    }

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    int32_t get_type() const
    {
        return type;
    }

    void set_type(const int32_t value)
    {
        type = value;
    }

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    float get_latitude() const
    {
        if( list_lat.size() != 0 )
            return list_lat.at( list_lat.size() - 1 );
        else
            return 0.0f;
    }

    void set_latitude(const float value)
    {
        list_lat.push_back( value );
    }

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    float get_longitude() const
    {
        if( list_long.size() != 0 )
            return list_long.at( list_long.size() - 1 );
        else
            return 0.0f;
    }

    void set_longitude(const float value)
    {
        list_long.push_back( value );
    }

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    float get_score() const
    {
        return last_score;
    }

    float get_min_score() const
    {
        return mini_score;
    }

    float get_max_score() const
    {
        return maxi_score;
    }

    void set_score(const float value)
    {
        mini_score = std::min(mini_score, value);
        maxi_score = std::max(maxi_score, value);
        last_score = value;
    }

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    float get_speed_horizontal() const
    {
        return speed_h;
    }

    void set_speed_horizontal(const float value)
    {
        speed_h = value;
    }

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    float get_speed_vertical() const
    {
        return speed_v;
    }

    void set_speed_vertical(const float value)
    {
        speed_v = value;
    }

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    float get_angle() const
    {
        return angle;
    }

    void set_angle(const float value)
    {
        angle = value;
    }

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    float get_altitude() const
    {
        if( list_altitude.size() != 0 )
            return list_altitude.at( list_altitude.size() - 1 );
        else
            return 0.0f;
    }

    void set_altitude(const float value)
    {
        list_altitude.push_back( value );
    }

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    float get_dist_cur() const
    {
        return dist_curr;
    }

    float get_dist_min() const
    {
        return dist_min;
    }

    float get_dist_max() const
    {
        return dist_max;
    }

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    int32_t get_OACI() const
    {
        return OACI;
    }

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    char *get_name() {
        return name;
    }

    void set_name(const char *value) {
        strcpy(name, value);
    }

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    int32_t get_messages() const
    {
        return updates;
    }

    void update()
    {
        lastUpdate = std::chrono::system_clock::now();
        updates += 1;
        modified = true;
    }

    int32_t last_update()
    {
        const auto curr   = std::chrono::system_clock::now();
        const int32_t seconds = std::chrono::duration_cast<std::chrono::seconds>(curr - lastUpdate).count();
        return seconds;
    }

    void print()
    {
        if( modified ) green();
        printf("%06X | %s | %s | ", get_OACI(), toCodeName(get_type()), get_name());
        printf("%1.2f [%1.2f, %1.2f] | ", get_score(), get_min_score(), get_max_score());

        if(get_latitude() != 0) printf("%9.6f | %9.6f | ", get_latitude(), get_longitude());
        else                    printf("--------- | --------- | ");

        printf("%4d km/h | %4d m/mn | %4d° | ", (int32_t) get_speed_horizontal(),
               (int32_t) get_speed_vertical(), (int32_t) get_angle());

        if( GNSS ) printf("GNSS | ");
        else       printf("BARO | ");

        if( get_altitude() != 0 ) printf("%5d pds | ",   (int32_t) get_altitude());
        else                      printf("--------- | ");

        printf("%5d km [%3d,%3d] | ", (int32_t) get_dist_cur(), (int32_t) get_dist_min(), (int32_t) get_dist_max());
        printf("%6d | ", get_messages());

        const int32_t seconds = last_update();
        if( seconds > 60 ) printf("%5d mn |\n", seconds/60);
        else               printf("%6d s |\n",  seconds);

        if( modified ) black();
        modified = false;
    }

    void store(FILE* file)
    {
        fprintf(file, "[PLANE] %06X (type = %s, name = %s )\n", get_OACI(), toCodeName(get_type()), get_name());
        //printf("%06X | %s | %s | ", get_OACI(), toCodeName(get_type()), get_name());
        fprintf(file, " - last score %1.2f [min = %1.2f, max = %1.2f]\n", get_score(), get_min_score(), get_max_score());
        if( GNSS ) fprintf(file, " - plane sensor : GNSS\n");
        else       fprintf(file, " - plane sensor : BARO\n");
                   fprintf(file, " - last position %9.6f | %9.6f\n", get_latitude(), get_longitude());
        if(get_latitude() != 0) fprintf(file, " - last position %9.6f | %9.6f\n", get_latitude(), get_longitude());
        else                    fprintf(file, " - last position --------- | ---------\n");
        if(get_altitude() != 0) fprintf(file, " - last altitude %5d pds\n",   (int32_t) get_altitude());
        else                    fprintf(file, " - last altitude ---------\n");
        fprintf(file, " - others %4d km/h | %4d m/mn | %4d°\n", (int32_t) get_speed_horizontal(), (int32_t) get_speed_vertical(), (int32_t) get_angle());

        fprintf(file, " - last distance %5d km [min = %3d km, max = %3d km]\n", (int32_t) get_dist_cur(), (int32_t) get_dist_min(), (int32_t) get_dist_max());
        fprintf(file, " - #messages %6d\n", get_messages());
        fprintf(file, "                     latitude |                  longitude |    altitude\n");
        for (uint32_t jj = 0; jj < list_lat.size(); jj += 1)    // pour tous les positions
        {
            fprintf(file, "   %24.22f  | %24.22f  | %8d pds\n", list_lat[jj], list_long[jj], list_altitude[jj]);
        }
        fprintf(file, "\n");
        fprintf(file, "\n");
    }

};

#endif