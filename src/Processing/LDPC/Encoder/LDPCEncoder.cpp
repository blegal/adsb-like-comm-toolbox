#include "LDPCEncoder.hpp"

#include <fstream>
#include <sstream>
#include <stdexcept>

LDPCEncoder::LDPCEncoder(std::string filename)
{
    std::ifstream ifile( filename );
    if( ifile.is_open() == false )
        throw std::runtime_error("The file provided to LDPCEncoder module does not exist !");

    std::vector<uint16_t> data;
    std::string buffer;

    std::getline(ifile, buffer); // # N        =
    assert(buffer == "#define K_LDPC");
    std::getline(ifile, buffer);
    K = std::stoi( buffer );

    std::getline(ifile, buffer); // # K        =
    assert(buffer == "#define N_LDPC");
    std::getline(ifile, buffer);
    N = std::stoi( buffer );

    for(uint32_t i = 0; i < K; i += 1)
    {
        std::string temp;
        std::getline(ifile, buffer);
        std::istringstream iss(buffer); // string stream
        while(std::getline(iss, temp, ' '))
        {
            if( temp.size() == 0 ) continue;
            data.push_back( std::stoi(temp) );
        };
    }
    ifile.close();

    EncValues = new uint16_t[ data.size() ];
    for(uint32_t i = 0; i < data.size(); i += 1)
    {
        EncValues[i] = data[i];
    }

}


LDPCEncoder::~LDPCEncoder()
{
    delete EncValues;
}


void LDPCEncoder::execute(std::vector<uint8_t>& ibuffer, std::vector<uint8_t>& obuffer)
{
    if( ibuffer.size() != K )
        throw std::runtime_error("The frame to encode has an invalid K value");

    if( obuffer.size() != N )
        obuffer.resize( N );

    uint8_t  *ptr_in   = ibuffer.data();
    uint8_t  *ptr_out  = obuffer.data();
    uint16_t *ptr = EncValues;

    for(uint32_t y = 0; y < K; y++)
    {
        const uint32_t bit = ptr_in[y];
        uint32_t nbElement = (*ptr++);
        if( bit == 1 )
        {
            for(uint32_t q=0; q<nbElement; q++)
            {
                ptr_out[ (*ptr) ] ^= bit;
                ptr += 1;
            }
        }else{
            ptr += nbElement;
        }
    }
}
