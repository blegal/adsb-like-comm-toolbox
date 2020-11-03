#include "Frame.hpp"

Frame::Frame(const uint32_t n)    // payload size in bytes
{
    //
    // On code le preambule ADSB
    //
    header.push_back( 1 );
    header.push_back( 1 );
    header.push_back( 2 );
    header.push_back( 2 );
    header.push_back( 0 );
    header.push_back( 0 );
    header.push_back( 2 );
    header.push_back( 2 );

    //
    // On alloue l'espace memoire associé aux données + 24b CRC
    //    
    config.resize   (2); // in bytes
    payload.resize  (n); // in bytes
    crc_field.resize(4); // in bytes
}


Frame::~Frame()
{

}


void Frame::set_type(const uint8_t v)
{
    config[0] = v;
}


uint8_t Frame::get_type()
{
    return config[0];
}


uint32_t Frame::header_size()
{
    return header.size();
}

uint32_t Frame::get_payload_size()                  // payload
{
    return ((uint32_t)config[1]) + 1;
}


void Frame::set_payload_size(const uint32_t v)      // payload
{
    assert(v >=   1);
    assert(v <= 256);
    config[1] =   ( v - 1);
    payload.resize( v    );

}


void Frame::set_payload(const std::vector<uint8_t>& v)
{
    // On check la taille des données
    if( v.size() != payload.size() )
    {
        std::cout << "Error in Frame::set_payload(v.size() = " << v.size() << ")" << std::endl;
        exit( -1 );
    }
    for(uint32_t i = 0; i < v.size(); i += 1)
    {
        payload[i] = v[i];
    }
}


void Frame::get_payload(std::vector<uint8_t>& v)
{
    // On check la taille des données
    if( v.size() != payload.size() )
    {
        std::cout << "Error in Frame::get_payload(v.size() = " << v.size() << ")" << std::endl;
        exit( -1 );
    }
    for(uint32_t i = 0; i < payload.size(); i += 1)
    {
        v[i] = payload[i];
    }
}


void Frame::get_frame_bits(std::vector<uint8_t>& buff)
{
    // calcul de la taille de la trame en bits
    const uint32_t ll = header.size() + 8 * (config.size() + payload.size() + crc_field.size());
#if 0
    const uint32_t ll = header.size() + (8 * array.size() + 32); // header + 8 * (data + type + payload)
    if( buff.size() != ll )
    {
        buff.resize( ll );
    }

    const uint32_t hs = header.size();
    for(uint32_t i = 0; i < hs; i += 1)
    {
        buff[i] = header[i];
    }

    const uint32_t ds = array.size();
    for(uint32_t i = 0; i < ds; i += 1)
    {
        const uint8_t v = header[i];
        for (int j = 0; j < 8; j += 1)
        {
            buff[hs + 8 * i + j] = (array[i] >> j) & 0x01;
        }
    }
#endif
}


void Frame::fill_frame_bits(std::vector<uint8_t>& buff)
{
#if 0
    const uint32_t ll = header.size() + (8 * array.size() + 32); // header + 8 * (data + type + payload)
    if( buff.size() != ll )
    {
        std::cout << "Error in Frame::fill_frame(v.size() = " << buff.size() << ")" << std::endl;
        exit( -1 );
    }

    //
    //  On recopie les données provenant du header
    //
    const uint32_t hs = header.size();
    for(uint32_t i = 0; i < hs; i += 1)
    {
        header[i] = buff[i];
    }

    //
    //  On recopie et on compose les données provenant du payload
    //
    const uint32_t ds = array.size();
    for(uint32_t i = 0; i < ds; i += 1)
    {
        const uint8_t v = 0;
        for (int j = 0; j < 8; j += 1)
        {
            buff[hs + 8 * i + j] = (array[i] >> j) & 0x01;
        }
    }
#endif
}


void Frame::compute_crc ()
{
    for(uint32_t i = size() + 1; i < data_size(); i += 1)
    {
        payload[i] = 0;
    }
}


bool Frame::validate_crc()
{
    return true;
}


uint8_t* Frame::payload_to_emit()
{
    return (array.data() + 1);
}


uint8_t* Frame::header_to_emit()
{
    return header.data();
}


uint8_t* Frame::conf_to_emit()
{
    return conf.data();
}


uint8_t* Frame::data_to_emit()
{
    return payload.data();
}


uint8_t* Frame::crc_to_emit()
{
    return crc_field.data();
}


uint8_t  Frame::data(const uint32_t pos)
{
    return payload[pos + 1];
}


uint8_t* Frame::data_to_emit()
{
    return payload.data();
}


void Frame::set_payload(const uint32_t pos, const int8_t value)
{
    (data_to_emit())[pos + 1] = value;
}
