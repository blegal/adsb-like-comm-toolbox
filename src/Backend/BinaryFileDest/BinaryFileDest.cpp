#include "BinaryFileDest.hpp"


BinaryFileDest::BinaryFileDest(std::string file)
{
    filename = file;
}


BinaryFileDest::~BinaryFileDest()
{

}


void BinaryFileDest::execute(Frame* f)
{
    // Début de la gestion et generation des images
    if(f->get_type() == FRAME_NEW_IMAGE)
    {
        if( file != nullptr )
        {
            printf("(EE) A new BMP image should be allocated whereas a picture already exist.\n");
            exit( -1 );
        }

        file = fopen( filename.c_str(), "wb" );

        printf("(DD) Ouverture du fichier (%d)\n", filename.c_str());

    }
    else if(f->get_type() == FRAME_END_IMAGE)
    {
        if( file == nullptr )
        {
            printf("(EE) A new BMP image should be allocated whereas a picture already exist.\n");
            exit( -1 );
        }

        fclose( file );
        file = nullptr;
    }
    else if(f->get_type() == FRAME_INFOS)
    {
        if( file == nullptr )
        {
            printf("(EE) A new BMP image should be allocated whereas a picture already exist.\n");
            exit( -1 );
        }

        fwrite( f->payload_to_emit(), sizeof(uint8_t), f->payload_size(), file);
    }
    else
    {
        printf("(EE) Something strange happen...\n");
        printf("(EE) %s :: %d\n", __FILE__, __LINE__);
        exit( -1 );
    }
}
