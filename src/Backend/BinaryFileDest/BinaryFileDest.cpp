#include "BinaryFileDest.hpp"


BinaryFileDest::BinaryFileDest(std::string file)
{
    filename = file;
}


BinaryFileDest::~BinaryFileDest()
{

}


void BinaryFileDest::execute(FECFrame* f)
{
    // Début de la gestion et generation des images
    const uint32_t frame_type = f->get_config_u16(0);
    if(frame_type == FRAME_NEW_IMAGE)
    {
        if( file != nullptr )
        {
            printf("(EE) A new BinaryFile should be open but a BinaryFile already exist...\n");
            exit( EXIT_FAILURE );
        }

        file = fopen( filename.c_str(), "wb" );

        printf("(II) Ouverture du fichier (%s)\n", filename.c_str());

    }
    else if(frame_type == FRAME_END_IMAGE)
    {
        if( file == nullptr )
        {
            printf("(EE) A BinaryFile should be closed but no one is opened ?!\n");
            exit( EXIT_FAILURE );
        }

        fclose( file );
        file = nullptr;
        printf("(II) Fermeture du fichier (%s)\n", filename.c_str());
    }
    else if(frame_type == FRAME_INFOS)
    {
        if( file == nullptr )
        {
            printf("(EE) Some information should be write but no BinaryFile is opened.\n");
            exit( EXIT_FAILURE );
        }
        const uint32_t nbytes     = f->get_config_u16(1);
        fwrite( (void*)f->data().data(), sizeof(uint8_t), nbytes, file);
    }
    else
    {
        printf("(EE) Something strange happen...\n");
        printf("(EE) %s :: %d\n", __FILE__, __LINE__);
        exit( EXIT_FAILURE );
    }
}
