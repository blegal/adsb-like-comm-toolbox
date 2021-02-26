#include "BinaryFileSource.hpp"


BinaryFileSource::BinaryFileSource(std::string filename)
{
    file = fopen( filename.c_str(), "rb" );
    frame = 0;
    curr_s = 0;

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
      if( curr_s == 0 )
      {
          f->set_type   (FRAME_NEW_IMAGE);
          f->set_special(       0xFF ); // C'est l'ID x de la trame !
          f->clr_payload();
          curr_s = 1;
      }
      else if( curr_s == 1 )  // On envoie l'ensemble des pixels de la ligne (ou mettre la valeur de X ?)
      {


          const uint32_t length = f->payload_size();
          uint32_t nRead = fread( f->payload_to_emit(), sizeof(uint8_t), f->payload_size(), file );
          f->set_type   (                FRAME_INFOS);
          f->set_special(frame) ;
          if( nRead != length )
          {
              printf("(WW) We reach end of file in the last frame...\n");
              curr_s = 2;
          }
          frame+= 1;
      }
      else
      {
        printf("(EE) Jamais nous n'aurions du arriver ici... ( curr_s == %d )\n", curr_s);
        exit( EXIT_FAILURE );
      }
    }
    else
    {
        printf("(EE) The file stream has ended.\n");
        f->set_type   (FRAME_END_IMAGE);
        f->set_special(       0xFF ); // C'est l'ID x de la trame !
        f->clr_payload();
        frame = 0;
    }

}


void BinaryFileSource::execute(FECFrame* f)
{
    if( feof(file) == 0 )
    {
      if( curr_s == 0 )
      {
          f->set_config_u16(FRAME_NEW_IMAGE, 0);
          f->set_config_u32(          frame, 1);
          f->clr_payload();
          curr_s = 1;
      }

      else if( curr_s == 1 )  // On envoie l'ensemble des pixels de la ligne (ou mettre la valeur de X ?)
      {
          f->set_config_u16(FRAME_INFOS, 0);
          f->set_config_u32(      frame, 1);
          f->clr_payload();
          const uint32_t length = f->size_payload();
          const uint8_t* ptr_da = f->get_ptr_payload();
          uint32_t nRead = fread( (void*)ptr_da, sizeof(uint8_t), length, file );
          if( nRead != length )
          {
            printf("(WW) We reach end of file in the last frame...\n");
            curr_s = 2;
          }
          frame+= 1;
      }
    }

    else
    {
        printf("(EE) The file stream has ended before...\n");
        f->set_config_u16(FRAME_END_IMAGE, 0);
        f->set_config_u32(          frame, 1);
        f->clr_payload();
        curr_s     = 0;
        frame=0;
    }
}


bool BinaryFileSource::is_alive()
{
    return ( feof(file) == 0 );
}
