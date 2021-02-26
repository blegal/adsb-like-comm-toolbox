#include "BinaryFileDest.hpp"
#include "../../couleur.h"


BinaryFileDest::BinaryFileDest(std::string file)
{
    filename = file;
    lastFid        =  0;

}


BinaryFileDest::~BinaryFileDest()
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


void BinaryFileDest::execute(FECFrame* f)
{
    // Début de la gestion et generation des images
    const uint32_t frame_type = f->get_config_u16(0);
    const uint32_t frame_id   = f->get_config_u32(1);
    if( frame_id != (lastFid+1)  )
    {
        const int32_t offset = frame_id - (lastFid + 1);
        if( frame_id != lastFid )
        {
            yellow();
            printf("(WW) Nous avons visiblement perdu %d frames (Frame ID : %d => %d)\n", offset, lastFid, frame_id);
            black();
        }else{
            red();
            printf("(EE) Nous avons visiblement perdu %d frames (Frame ID : %d => %d)\n", offset, lastFid, frame_id);
            printf("(EE) "); f->dump();
            black();
        }
    }
    lastFid = frame_id;

    if(frame_type == FRAME_NEW_IMAGE)
    {
       if( file != nullptr )
       {
           printf("(EE) A new BinaryFile should be open but a BinaryFile already exist...\n");
           exit( EXIT_FAILURE );
       }

       file = fopen( filename.c_str(), "w" );

       printf("(II) Ouverture du fichier (%s)\n", filename.c_str());

    }

    else if(frame_type == FRAME_INFOS)
    {
        if( file == nullptr )
        {
            printf("(EE) Some information should be write but no BinaryFile is opened.\n");
            exit( EXIT_FAILURE );
        }
        const uint32_t nbytes     = f->size_payload();
        fwrite( (void*)f->data().data(), sizeof(uint8_t), nbytes, file);
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
    else
    {
        printf("(EE) Something strange happen...\n");
        printf("(EE) %s :: %d\n", __FILE__, __LINE__);
        exit( EXIT_FAILURE );
    }
}
