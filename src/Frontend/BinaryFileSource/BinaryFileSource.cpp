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
        exit( EXIT_FAILURE );
    }

}


void BinaryFileSource::execute(FECFrame* f)
{
    if( feof(file) == 0 )
    {
        const uint32_t length = f->size_payload();
        const uint8_t* ptr_da = f->get_ptr_payload();

        uint32_t nRead = fread( (void*)ptr_da, sizeof(uint8_t), length, file );
        if( nRead != length )
            printf("(WW) We reach end of file in the last frame...\n");
    }
    else
    {
        printf("(EE) The file stream has ended before...\n");
        exit( EXIT_FAILURE );
    }

}


bool BinaryFileSource::is_alive()
{
    return ( feof(file) == 0 );
}
