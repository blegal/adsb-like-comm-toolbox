#include "RadioFichierRAW.hpp"


RadioFichierRAW::RadioFichierRAW(std::string filen) : Radio(0, 0)
{
    filename = filen;
}


RadioFichierRAW::~RadioFichierRAW()
{

}


void RadioFichierRAW::initialize()
{
    FILE* stream = fopen(filename.c_str(), "r");

    if (stream == NULL){
        fprintf(stderr, "RadioFichier::initialize() error during file openning (%s) !\n", filename.c_str());
        exit( -1 );
    }

    int8_t   buff[4096];
    uint32_t nElements = 1;
    while ( nElements != 0 ) {
        nElements = fread(buff, 1, 4096, stream);
        for(int q=0; q<nElements; q+=1)
        {
            data.push_back( buff[q] );
        }
    }
    fclose(stream);
}


void RadioFichierRAW::reception( std::vector< std::complex<float> >& cbuffer)
{

    if( cbuffer.size() != (data.size()/2) ) // Nombre de symbols et non d'echantillons
    {
        cbuffer.resize(data.size()/2);
    }

    uint32_t length = data.size();
    for(uint32_t i = 0; i < length; i += 2)
    {
        std::complex<float> value( (float)data[i], (float)data[i+1] );
        cbuffer[i/2] = value;
    }
    _alive = false; // On stop le prog
}


void RadioFichierRAW::reset()
{
    fprintf(stderr, "RadioFichier::reset() not implemented yet !\n");
    exit( -1 );
}


void RadioFichierRAW::start_engine()
{

}


void RadioFichierRAW::stop_engine()
{

}


