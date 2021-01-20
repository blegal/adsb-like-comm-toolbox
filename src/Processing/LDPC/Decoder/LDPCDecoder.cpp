#include "LDPCDecoder.hpp"

#include <fstream>
#include <sstream>
#include <stdexcept>

LDPCDecoder::LDPCDecoder()
{
    dec.setOffset( 1 );
    dec.nIters      = 10;
    dec.s_criterion = false;

    i_buffer.resize( dec.n() );
    o_buffer.resize( dec.n() ); // cf le behavior du decodeur LDPC
}


LDPCDecoder::~LDPCDecoder()
{

}


void LDPCDecoder::execute(std::vector<int8_t>& ibuffer, std::vector<uint8_t>& obuffer)
{
    // Le buffer de sortie doit etre 2x plus grand...
    if( ibuffer.size() != 1152 )
    {
        printf("\x1B[33m(EE) input vector size (%lu) is not the correct one LDPCDecoder(%s::%d)\x1B[0m\n", ibuffer.size(), __FILE__, __LINE__);
        exit( EXIT_FAILURE );
    }
    if( obuffer.size() != 576 )
    {
        printf("\x1B[33m(EE) output vector size (%lu) is not the correct one LDPCDecoder(%s::%d)\x1B[0m\n", obuffer.size(), __FILE__, __LINE__);
        exit( EXIT_FAILURE );
    }

    // On positionne les données
    const uint32_t iLength = ibuffer.size();
    for(uint32_t i = 0; i < iLength; i += 1)
        i_buffer[i] = 32 * (2 * ((int8_t)ibuffer[i]) - 1); // On module les données car on est en [0, 1]

    dec.decode( i_buffer.data(), o_buffer.data() );

    const uint32_t oLength = obuffer.size();
    for(uint32_t i = 0; i < oLength; i += 1)
        obuffer[i] = o_buffer[i]; // On module les données car on est en [0, 1]
}


void LDPCDecoder::execute(std::vector<uint8_t>& ibuffer, std::vector<uint8_t>& obuffer)
{
    // Le buffer de sortie doit etre 2x plus grand...
    if( ibuffer.size() != 1152 )
    {
        printf("\x1B[33m(EE) input vector size (%lu) is not the correct one LDPCDecoder(%s::%d)\x1B[0m\n", ibuffer.size(), __FILE__, __LINE__);
        exit( EXIT_FAILURE );
    }
    if( obuffer.size() != 576 )
    {
        printf("\x1B[33m(EE) output vector size (%lu) is not the correct one LDPCDecoder(%s::%d)\x1B[0m\n", obuffer.size(), __FILE__, __LINE__);
        exit( EXIT_FAILURE );
    }


    // On positionne les données
    const uint32_t iLength = ibuffer.size();
    for(uint32_t i = 0; i < iLength; i += 1)
        i_buffer[i] = 32 * (2 * ((int8_t)ibuffer[i]) - 1); // On module les données car on est en [0, 1]

    dec.decode( i_buffer.data(), o_buffer.data() );

    const uint32_t oLength = obuffer.size();
    for(uint32_t i = 0; i < oLength; i += 1)
        obuffer[i] = o_buffer[i]; // On module les données car on est en [0, 1]
}
