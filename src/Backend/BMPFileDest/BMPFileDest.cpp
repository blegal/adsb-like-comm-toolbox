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

    curr_x         =  0;
    curr_y         =  0;
    lastXid        = -1;
}


BMPFileDest::~BMPFileDest()
{
    if( bmp != nullptr )
    {
        bmp->write( filename.c_str() );
        delete bmp;
    }
}


void BMPFileDest::execute(Frame* f)
{

    // Début de la gestion et generation des images
    if(f->get_type() == FRAME_NEW_IMAGE)
    {
        if( bmp != nullptr )
        {
            printf("(EE) A new BMP image should be allocated whereas a picture already exist.\n");
            exit( -1 );
        }

        i_width        = f->data_u32(0);
        i_height       = f->data_u32(1);

        green();
        printf("(DD) Creation d'une image ( %d x %d )\n", i_width, i_height);
        black();

        bmp            = new BMP(i_width, i_height);
        nBytesPerPixel = (bmp->bmp_info_header.bit_count / 8);
        BytesPerLine   = (bmp->bmp_info_header.width * nBytesPerPixel);
    }
    else if(bmp == nullptr)
    {
        yellow();
        printf("(DD) We are getting data frames but we had no FRAME_NEW_IMAGE\n");
        black();
    }
    else if(f->get_type() == FRAME_END_IMAGE)
    {
        green();
        printf("(DD) Fin de reception de l'image\n");
        black();
        bmp->write( filename.c_str() );
        delete bmp;
        bmp = nullptr;
    }
    else if(f->get_type() == FRAME_NEW_LINE)
    {
        curr_x = 0;
        curr_y = f->data_u32(0);
        lastXid = -1; // On n'a pas encore recu de trame de pixels
#ifdef _DEBUG_INFO_
        printf("(DD) - Begin of line (%d)\n", curr_y);
#endif
    }
    else if(f->get_type() == FRAME_END_LINE)
    {
        const uint32_t y_value = f->data_u32(0);
        if( curr_y != y_value )
            printf("(EE) - End of line (%d) but the curr_y value is %d\n", y_value, curr_y);
#ifdef _DEBUG_INFO_
        else
                            printf("(DD) - End of line (%d)\n", y_value);
#endif
        lastXid = -1; // On n'a pas encore recu de trame de pixels
    }
    else if(f->get_type() == FRAME_INFOS)
    {
        const uint32_t payload = f->payload_size();
#if 1
        if( lastXid >= f->get_special()  )
        {
            curr_y += 1; // On a au moins perdu une ligne !
            curr_x  = f->get_special() * (payload / 3);
            yellow();
            printf("(WW) On a du perdre des données en cours de route (curr_y = %4d, curr_x = %4d)\n", curr_y, curr_x);
            black();
        }
        lastXid = f->get_special();
#endif

        if( curr_x < i_width )
        {
#ifdef _DEBUG_INFO_
            printf("(DD) --- Receiving pixel set (%d)\n", curr_x);
#endif
            uint8_t* ptr = bmp->data.data() + curr_y * BytesPerLine + curr_x * nBytesPerPixel;

            for( uint32_t i = 0; i < payload; i +=1 )
                ptr[i] = f->data(i);
            curr_x += (payload / 3);    // on avance dans la ligne
        }else{
            printf("(EE) --- Receiving pixel set (%d) whereas i_width = %d\n", curr_x, i_width);
        }
    }
    else
    {
        printf("(EE) Something strange happen (FRAME_TYPE is unknown !)\n");
//        exit( -1 );
    }
    // Fin de la gestion et generation des images
}
