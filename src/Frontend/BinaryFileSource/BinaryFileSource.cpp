#include "BinaryFileSource.hpp"


BinaryFileSource::BinaryFileSource(std::string filename)
{
    file = fopen( filename.c_str(), "wb" );
    if( file == nullptr )
    {
    }
}


BinaryFileSource::~BinaryFileSource()
{
    fclose( file );
}


void BinaryFileSource::execute(Frame* f)
{
    if( feof(file) == 0 )
    {
        const uint32_t length = f->payload_size();
        uint32_t nRead = fread( f->payload_to_emit(), sizeof(uint8_t), f->payload_size(), file );
        if( nRead != length )
            printf("(WW) We reach end of file in the last frame...\n");
    }
    else
    {
        printf("(EE) The file stream has ended before...\n");
        exit( -1 );
    }

}


bool BinaryFileSource::is_alive()
{
    return ( feof(file) == 0 );
}
