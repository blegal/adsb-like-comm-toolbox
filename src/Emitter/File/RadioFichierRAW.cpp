#include "RadioFichierRAW.hpp"


RadioFichierRAW::RadioFichierRAW(std::string filen) : Emitter(0, 0)
{
    filename = filen;
    stream   = nullptr;
}


RadioFichierRAW::RadioFichierRAW(Parameters& param) : Emitter(0, 0)
{
    filename = param.toString("filename");
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
    stream = fopen(filename.c_str(), "w");

    if (stream == nullptr){
        fprintf(stderr, "RadioFichierRAW::initialize() error during file openning (%s) !\n", filename.c_str());
        exit( -1 );
    }
}


void RadioFichierRAW::close()
{
    if (stream == nullptr){
        fprintf(stderr, "RadioFichierRAW::close() error during file close operation (%s) !\n", filename.c_str());
        exit( -1 );
    }
    if (stream != nullptr){
        fclose( stream );
        stream = nullptr;
    }
}

#define _STORE_ZERO_

void RadioFichierRAW::emission( std::vector<int8_t>& cbuffer )
{


    const uint32_t length = 262144;

    // On genere "length" données aléatoires
#ifdef _STORE_ZERO_
    int8_t* buff = new int8_t[length];
    for(int i = 0; i < length; i += 1)
        buff[i] = 0;//(rand()%33) - 16;

    // On copie ces données dans le flux
    fwrite(buff, length, sizeof(int8_t), stream);
    std::cout << "Writing " << length << " data in file\n";
#endif

    // On genere copie les N données "length" dans le fichier
    fwrite(cbuffer.data(), cbuffer.size(), sizeof(int8_t), stream);
    std::cout << "Writing " << cbuffer.size() << " data in file\n";

#ifdef _STORE_ZERO_
    // On genere "length" données aléatoires
    for(int i = 0; i < length; i += 1)
        buff[i] = 0;//(rand()%33) - 16;

    // On copie ces données dans le flux
    fwrite(buff, length, sizeof(int8_t), stream);
    std::cout << "Writing " << length << " data in file\n";

    // On nettoye le contexte
    delete[] buff;
#endif
}


void RadioFichierRAW::reception( std::vector< std::complex<float> >& cbuffer )
{

}


void RadioFichierRAW::reset()
{
    fprintf(stderr, "RadioFichierRAW::reset() not implemented yet !\n");
    exit( -1 );
}


