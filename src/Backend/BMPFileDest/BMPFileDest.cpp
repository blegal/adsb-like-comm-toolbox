#include "BMPFileDest.hpp"
#include "../../couleur.h"

BMPFileDest::BMPFileDest(std::string file)
{
    filename = file;
    bmp = nullptr;

    i_height       =  0;
    i_width        =  0;

    nBytesPerPixel =  0;
    BytesPerLine   =  0;

    lastFid        =  0;

    picture_id     = 0;
}


BMPFileDest::~BMPFileDest()
{
    if( bmp != nullptr )
    {
        printf("(DD) Sauvegarde automatique des données sur le disque dur !\n");
        std::string fileN = "" + std::to_string(picture_id++) + filename;
        bmp->write( fileN.c_str() );
        delete bmp;
    }
}


void BMPFileDest::execute(Frame* f)
{
}

#define FRAME_INFOS         0x11 // 1111 0000
#define FRAME_NEW_IMAGE     0x22 // 0000 1111
#define FRAME_END_IMAGE     0x33 // 1100 1100
// #define FRAME_NEW_LINE      0x44 // 0011 0011
// #define FRAME_END_LINE      0x55 // 1010 1010
#define FRAME_EMPTY         0x66 // 1001 1001

void BMPFileDest::execute(FECFrame* f)
{
    const uint32_t frame_type   = f->get_config_u16(0);
    const uint32_t coord_x      = f->get_config_u16(1);
    const uint32_t coord_y      = f->get_config_u16(2);
    const uint32_t frame_id     = f->get_config_u16(3);
    const uint32_t payload_size = f->size_payload();

    if( f->sum_frame() == 0 )   // Les trames tout à zero n'existent pas
        return;                 // dans le protocole image

    if(     (frame_type != FRAME_INFOS    ) &&
            (frame_type != FRAME_NEW_IMAGE) &&
            (frame_type != FRAME_END_IMAGE) &&
            // (frame_type != FRAME_NEW_LINE ) &&
            // (frame_type != FRAME_END_LINE ) &&
            (frame_type != FRAME_EMPTY    )
            ){
        red();
        printf("(EE) Something strange happen (FRAME_TYPE is unknown !)\n");
        printf("(EE) ");
        f->dump();
        black();
        return;
    }

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
        if( bmp != nullptr )
        {
            printf("(EE) A new BMP image should be allocated whereas a picture already exist.\n");
            return;
        }

        i_width  = f->data_u32(0);
        i_height = f->data_u32(1);

        green();
        printf("(DD) Creation d'une image ( %d x %d )\n", i_width, i_height);
        black();

        bmp            = new BMP(i_width, i_height);
        nBytesPerPixel = (bmp->bmp_info_header.bit_count / 8);
        BytesPerLine   = (bmp->bmp_info_header.width * nBytesPerPixel);
        BytesPerFrame  = f->size_payload();

        memset(bmp->data.data(), 0xFF, i_width * i_height * nBytesPerPixel);
    }
    else if(bmp == nullptr)
    {
        yellow();
        printf("(DD) FECFrame - We are getting data frames (0x%4.4X) but we had no FRAME_NEW_IMAGE\n", frame_type);
        printf("(DD) "); f->dump();
        black();
    }
    else if(frame_type == FRAME_END_IMAGE)
    {
        green();
        printf("(DD) Fin de reception de l'image\n");
        black();

        std::string fileN = "" + std::to_string(picture_id++) + filename;
        bmp->write( fileN.c_str() );
        delete bmp;
        bmp = nullptr;
        lastFid = -1;
    }
    // else if(frame_type == FRAME_NEW_LINE)
    // {
    //
    // }
    // else if(frame_type == FRAME_END_LINE)
    // {
    //
    // }
    else if(frame_type == FRAME_INFOS)
    {
        uint8_t* ptr = bmp->data.data() + coord_y * BytesPerLine + (coord_x * nBytesPerPixel);

        for( uint32_t i = 0; i < payload_size; i +=1 )
            ptr[i] = f->data_u8(i);
    }
    else
    {
        printf("(EE) We should never arrive here !)\n");
        exit( EXIT_FAILURE );
    }
}
