#include "BMPSource.hpp"


BMPSource::BMPSource(std::string fileN)
{
    bmp = nullptr;

    curr_x  = 0;
    curr_y  = 0;
    curr_s  = 0;
    frame   = 0;

    bmp = new BMP( fileN );

    printf("(II) Properties of the picture :\n");
    printf("(II) -> Picture filename           : %s\n",      fileN.c_str());
    printf("(II) -> Picture size               : %dx%d\n",   bmp->bmp_info_header.width, bmp->bmp_info_header.height);
    printf("(II) -> #bits per pixel            : %d\n",      bmp->bmp_info_header.bit_count );
    printf("(II) -> Picture size in bytes      : %d\n",      (bmp->bmp_info_header.width * bmp->bmp_info_header.height) * (bmp->bmp_info_header.bit_count/8));
//  printf("(II) -> #frames per picture line   : %d\n",      (bmp->bmp_info_header.width * (bmp->bmp_info_header.bit_count/8)/payload) );

    isFinished = false;
}


BMPSource::~BMPSource()
{
    if( bmp != nullptr )
        delete bmp;
}


void BMPSource::execute(Frame* f)
{
    const uint32_t nBytesPerPixel = (bmp->bmp_info_header.bit_count / 8);
    const uint32_t nBytesPerLine  = (bmp->bmp_info_header.width * nBytesPerPixel);

    if( curr_s == 0 )
    {
        f->set_type   (FRAME_NEW_IMAGE);
        f->set_special(       0xFF ); // C'est l'ID x de la trame !
        f->clr_payload();
        f->data_u32(0, bmp->bmp_info_header.width);
        f->data_u32(1, bmp->bmp_info_header.height);
        curr_s = 1;

    }
    else if( curr_s == 1 )  // On envoie un tag debut de ligne avec la valeur de Y
    {
        // f->set_type   (FRAME_NEW_LINE);
        // f->set_special(      0xFF ); // C'est l'ID x de la trame !
        // f->clr_payload();
        // f->data_u32(0, curr_y);
        curr_s = 2;
    }
    else if( curr_s == 2 )  // On envoie l'ensemble des pixels de la ligne (ou mettre la valeur de X ?)
    {

        const uint8_t* ptr = bmp->data.data() + curr_y * nBytesPerLine + curr_x * nBytesPerPixel;

        const uint32_t payload = f->payload_size();
        for( uint32_t i = 0; i < payload; i +=1 )
            f->data(i, ptr[i]);

        f->set_type   (                FRAME_INFOS);
        f->set_special( curr_x / (payload / 3) );

        curr_x += (payload / 3);    // on avance dans la ligne

        if( curr_x >=  (uint32_t)bmp->bmp_info_header.width )
        {
            curr_x  = 0;
            //curr_s  = 3;
            curr_y += 1;
            if( curr_y == (uint32_t)bmp->bmp_info_header.height )
                curr_s  = 3;    // il est temps de cloturer la transmission !
            else
                curr_s  = 1;    // on repart sur une sequence new line...
        }
        else
        {
            curr_s = 2;     // On continue a transmettre la ligne en cours
        }
    }
    // else if( curr_s == 3 )  // On envoie un tag de fin de ligne avec la valeur de Y
    // {
    //     // f->set_type   (FRAME_END_LINE);
    //     // f->set_special(      0xFF ); // C'est l'ID x de la trame !
    //     // f->clr_payload();
    //     // f->data_u32(0, curr_y);
    //     curr_y += 1;
    //     if( curr_y == (uint32_t)bmp->bmp_info_header.height )
    //         curr_s  = 4;    // il est temps de cloturer la transmission !
    //     else
    //         curr_s  = 1;    // on repart sur une sequence new line...
    // }
    else if( curr_s == 3 )  // On informe le recepteur que la reception de l'image est terminée
    {
        f->set_type   (FRAME_END_IMAGE);
        f->set_special(       0xFF ); // C'est l'ID x de la trame !
        f->clr_payload();
        f->data_u32(0, bmp->bmp_info_header.width);
        f->data_u32(1, bmp->bmp_info_header.height);
        curr_s     = 4;
        isFinished = true;
    }
    else
    {
        printf("(EE) Jamais nous n'aurions du arriver ici... ( curr_s == %d )\n", curr_s);
        exit( -1 );
    }

    frame += 1;
}


void BMPSource::execute(FECFrame* f)
{
    const uint32_t nBytesPerPixel = (bmp->bmp_info_header.bit_count / 8);
    const uint32_t nBytesPerLine  = (bmp->bmp_info_header.width * nBytesPerPixel);

    if( curr_s == 0 )
    {
        f->set_config_u16(FRAME_NEW_IMAGE, 0);
        f->set_config_u16(      0x0000, 1);
        f->set_config_u16(      0x0000, 2);
        f->set_config_u16(          frame, 3);
        f->clr_payload();
        f->data_u32(bmp->bmp_info_header.width,  0);
        f->data_u32(bmp->bmp_info_header.height, 1);
        curr_s = 1;
    }
    else if( curr_s == 1 )  // On envoie un tag debut de ligne avec la valeur de Y
    {
        // f->set_config_u16(FRAME_NEW_LINE, 0);
        // f->set_config_u16(     0x0000, 1);
        // f->set_config_u16(     0x0000, 2);
        // f->set_config_u16(         frame, 3);
        // f->clr_payload();
        // f->data_u32(curr_y, 0);
        curr_s = 2;
    }
    else if( curr_s == 2 )  // On envoie l'ensemble des pixels de la ligne (ou mettre la valeur de X ?)
    {
        f->set_config_u16(FRAME_INFOS, 0);
        f->set_config_u16(     curr_x, 1);
        f->set_config_u16(     curr_y, 2);
        f->set_config_u16(      frame, 3);
        f->clr_payload();
        const uint8_t* ptr = bmp->data.data() + curr_y * nBytesPerLine + curr_x * nBytesPerPixel;

        const uint32_t payload = f->size_payload();
        for( uint32_t i = 0; i < payload; i +=1 )
            f->data_u8(ptr[i], i);

        curr_x += (payload / 3);    // on avance dans la ligne

        if( curr_x >=  (uint32_t)bmp->bmp_info_header.width )
        {
            curr_x  = 0;
            // curr_s  = 3;
            curr_y += 1;
            if( curr_y == (uint32_t)bmp->bmp_info_header.height )
                curr_s  = 3;    // il est temps de cloturer la transmission !
            else
                curr_s  = 1;    // on repart sur une sequence new line...
        }
        else
        {
            curr_s = 2;     // On continue a transmettre la ligne en cours
        }
    }
    // else if( curr_s == 3 )  // On envoie un tag de fin de ligne avec la valeur de Y
    // {
    //     // f->set_config_u16(FRAME_END_LINE, 0);
    //     // f->set_config_u16(     0x0000, 1);
    //     // f->set_config_u16(     0x0000, 2);
    //     // f->set_config_u16(         frame, 3);
    //     // f->clr_payload();
    //     // f->data_u32(curr_y, 0);
    //     curr_y += 1;
    //     if( curr_y == (uint32_t)bmp->bmp_info_header.height )
    //         curr_s  = 4;    // il est temps de cloturer la transmission !
    //     else
    //         curr_s  = 1;    // on repart sur une sequence new line...
    // }
    else if( curr_s == 3 )  // On informe le recepteur que la reception de l'image est terminée
    {
        f->set_config_u16(FRAME_END_IMAGE, 0);
        f->set_config_u16(      0x0000, 1);
        f->set_config_u16(      0x0000, 2);
        f->set_config_u16(          frame, 3);
        f->clr_payload();
        f->data_u32(bmp->bmp_info_header.width,  0);
        f->data_u32(bmp->bmp_info_header.height, 1);
        curr_s     = 5;
        isFinished = true;
    }
    else
    {
        printf("(EE) Jamais nous n'aurions du arriver ici... ( curr_s == %d )\n", curr_s);
        exit( -1 );
    }

    frame += 1;
}


bool BMPSource::is_alive()
{
    return !isFinished;
}
