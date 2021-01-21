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

        printf("(DD) Ouverture du fichier (%s)\n", filename.c_str());

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
        printf("(DD) Fermeture du fichier (%s)\n", filename.c_str());
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


void BinaryFileDest::execute(FECFrame* f)
{
    // Début de la gestion et generation des images
    const uint32_t frame_type = f->get_config_u16(0);
    if(frame_type == FRAME_NEW_IMAGE)
    {
        if( file != nullptr )
        {
            printf("(EE) A new BMP image should be allocated whereas a picture already exist.\n");
            exit( -1 );
        }

        file = fopen( filename.c_str(), "wb" );

        printf("(DD) Ouverture du fichier (%s)\n", filename.c_str());

    }
    else if(frame_type == FRAME_END_IMAGE)
    {
        if( file == nullptr )
        {
            printf("(EE) A new BMP image should be allocated whereas a picture already exist.\n");
            exit( -1 );
        }

        fclose( file );
        file = nullptr;
        printf("(DD) Fermeture du fichier (%s)\n", filename.c_str());
    }
    else if(frame_type == FRAME_INFOS)
    {
        if( file == nullptr )
        {
            printf("(EE) A new BMP image should be allocated whereas a picture already exist.\n");
            exit( -1 );
        }

        fwrite( (void*)f->get_ptr_payload(), sizeof(uint8_t), f->size_payload(), file);
    }
    else
    {
        printf("(EE) Something strange happen...\n");
        printf("(EE) %s :: %d\n", __FILE__, __LINE__);
        exit( -1 );
    }
}
