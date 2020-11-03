#include "Frame.hpp"

Frame::Frame(const uint32_t n)    // payload size
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
    array.resize(1 + (n/8) + 3); // in bytes
}


Frame::~Frame()
{

}


void Frame::set_type(const uint8_t v)
{
    array[0] = v;
}


uint8_t Frame::get_type()
{
    return array[0];
}


void Frame::set_payload(const std::vector<uint8_t>& v)
{
    // On check la taille des données
    if( v.size() != size() )
    {
        std::cout << "Error in Frame::set_payload(v.size() = " << v.size() << ")" << std::endl;
        exit( -1 );
    }

}


void Frame::get_payload(const std::vector<uint8_t>& v)
{
    // On check la taille des données
    if( v.size() != size() )
    {
        std::cout << "Error in Frame::get_payload(v.size() = " << v.size() << ")" << std::endl;
        exit( -1 );
    }

}


void Frame::get_frame(std::vector<uint8_t>& buff)
{
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
}


void Frame::fill_frame(std::vector<uint8_t>& buff)
{
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
        header[i]
    }
}


void Frame::compute_crc ()
{
    for(uint32_t i = size() + 1; i < data_size(); i += 1)
    {
        array[i] = 0;
    }
}


bool Frame::validate_crc()
{
    return true;
}


uint32_t Frame::size()
{
    return array.size() - 1 - 3; // moins type et moins 24b CRC
}


uint8_t* Frame::data()
{
    return (array.data() + 1);
}


uint8_t  Frame::data(const uint32_t pos)
{
    return array[pos + 1];
}


uint8_t* Frame::data_to_emit()
{
    return array.data();
}


void Frame::set_payload(const uint32_t pos, const int8_t value)
{
    (data_to_emit())[pos + 1] = value;
}


uint8_t* Frame::header_to_emit()
{
    return header.data();
}


uint32_t Frame::data_size()
{
    return array.size();
}


uint32_t Frame::header_size()
{
    return array.size();
}