#include "RadioFichierRAW.hpp"


RadioFichierRAW::RadioFichierRAW(std::string filen) : Radio(0, 0)
{
    filename = filen;
    stream   = nullptr;
}


RadioFichierRAW::~RadioFichierRAW()
{
    if (stream != NULL){
        fclose( stream );
    }
}


void RadioFichierRAW::initialize()
{
    stream = fopen(filename.c_str(), "r");

    if (stream == NULL){
        fprintf(stderr, "RadioFichierRAW::initialize() error during file openning (%s) !\n", filename.c_str());
        exit( -1 );
    }
}


void RadioFichierRAW::emission( std::vector<int8_t>& cbuffer )
{
    const uint length = cbuffer.size();

    // On genere "length" données aléatoires
    int8_t* buff = new int8_t[length];
    for(int i = 0; i < length; i += 1)
        buff[i] = (rand()%8) - 4;

    // On copie ces données dans le flux
    fwrite(buff, length, sizeof(int8_t), stream);

    // On genere copie les N données "length" dans le fichier
    fwrite(cbuffer.data(), cbuffer.size(), sizeof(int8_t), stream);

    // On genere "length" données aléatoires
    for(int i = 0; i < length; i += 1)
        buff[i] = (rand()%8) - 4;

    // On copie ces données dans le flux
    fwrite(buff, length, sizeof(int8_t), stream);

    // On nettoye le contexte
    delete[] buff;
}


void RadioFichierRAW::reception( std::vector< std::complex<float> >& cbuffer )
{

}


void RadioFichierRAW::reset()
{
    fprintf(stderr, "RadioFichierRAW::reset() not implemented yet !\n");
    exit( -1 );
}


