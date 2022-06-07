#ifndef _Logger_
#define _Logger_

class Logger {
private:
    FILE* file_iq_raw     = nullptr; // Le fichier contenant les données I/Q
    FILE* file_frames_bin = nullptr; // Le fichier contenant les 112 bits correspondant aux frames
    FILE* file_frames_dec = nullptr; // Le fichier contenant les trames décodées
    FILE* file_planes     = nullptr; // Le fichier contenant les informations concernant les avions
    FILE* file_coords     = nullptr; // Le fichier contenant les informations concernant les avions


public:

    Logger( const bool active ) {
        if( active == false )
        {
            file_iq_raw     = nullptr; // Le fichier contenant les données I/Q
            file_frames_bin = nullptr; // Le fichier contenant les 112 bits correspondant aux frames
            file_frames_dec = nullptr; // Le fichier contenant les trames décodées
            file_planes     = nullptr; // Le fichier contenant les informations concernant les avions
            file_coords     = nullptr; // Le fichier contenant les informations concernant les avions
        }else{
            file_iq_raw     = fopen( "file_iq_raw.cs8", "w" );
            file_frames_bin = fopen( "file_frames_bin.txt", "w" );
            file_frames_dec = fopen( "file_frames_dec.txt", "w" );
            file_planes     = fopen( "file_planes.txt", "w" );
            file_coords     = fopen( "file_coords.txt", "w" );
        }
    }

    ~Logger( ) {
        if( file_iq_raw     != nullptr ) fclose( file_iq_raw     );
        if( file_frames_bin != nullptr ) fclose( file_frames_bin );
        if( file_frames_dec != nullptr ) fclose( file_frames_dec );
        if( file_planes     != nullptr ) fclose( file_planes     );
        if( file_coords     != nullptr ) fclose( file_coords     );
    }



};

#endif