#include "BMPFileDest.hpp"


BMPFileDest::BMPFileDest(std::string file)
{
    filename = file;
    bmp = nullptr;

    i_height       = 0;
    i_width        = 0;

    nBytesPerPixel = 0;
    BytesPerLine   = 0;

    curr_x         = 0;
    curr_y         = 0;
}


BMPFileDest::~BMPFileDest()
{
    if( bmp != nullptr )
        delete bmp;
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
        bmp            = new BMP(i_width, i_height);
        nBytesPerPixel = (bmp->bmp_info_header.bit_count / 8);
        BytesPerLine   = (bmp->bmp_info_header.width * nBytesPerPixel);

        printf("(DD) Creation d'une image ( %d x %d )\n", i_width, i_height);

    }
    else if(f->get_type() == FRAME_END_IMAGE)
    {
#ifdef _DEBUG_INFO_
        printf("(DD) Fin de reception de l'image\n");
#endif
        bmp->write( filename.c_str() );
    }
    else if(f->get_type() == FRAME_NEW_LINE)
    {
        curr_x = 0;
        curr_y = f->data_u32(0);
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
    }
    else if(f->get_type() == FRAME_INFOS)
    {
        if( curr_x < i_width )
        {
#ifdef _DEBUG_INFO_
            printf("(DD) --- Receiving pixel set (%d)\n", curr_x);
#endif
            uint8_t* ptr = bmp->data.data() + curr_y * BytesPerLine + curr_x * nBytesPerPixel;

            const uint32_t payload = f->payload_size();
            for( uint32_t i = 0; i < payload; i +=1 )
                ptr[i] = f->data(i);
            curr_x += (payload / 3);    // on avance dans la ligne
        }else{
            printf("(EE) --- Receiving pixel set (%d) whereas i_width = %d\n", curr_x, i_width);
        }
    }
    else
    {
        printf("(EE) Something strange happen...\n");
        printf("(EE) %s :: %d\n", __FILE__, __LINE__);
        exit( -1 );
    }
    // Fin de la gestion et generation des images
}
