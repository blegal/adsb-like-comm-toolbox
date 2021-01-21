#include "HexSource.hpp"


HexSource::HexSource()
{
    nFrames = 0;
}


HexSource::~HexSource()
{

}


void HexSource::execute(Frame* f)
{
    const uint32_t length = f->payload_size();
    for( uint32_t i = 0; i < length; i +=1 )
    {
        f->data(i, i + nFrames);
    }
    nFrames += 1;
}


void HexSource::execute(FECFrame* f)
{
    f->set_config_u16( FRAME_INFOS, 0);
    f->set_config_u16( 0x00,     1);
    f->set_config_u32( nFrames,     2);

    const uint32_t length = f->size_payload();
    for( uint32_t i = 0; i < length; i +=1 )
    {
        f->data_u8(i + nFrames, i);
    }
    nFrames += 1;
}


bool HexSource::is_alive()
{
    return true;
}
