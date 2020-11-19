#include "RadioFichierRAW.hpp"


EmitterFichierRAW::EmitterFichierRAW(std::string filen) : Emitter(0, 0)
{
    filename = filen;
    stream   = nullptr;
}


EmitterFichierRAW::EmitterFichierRAW(Parameters& param) : Emitter(0, 0)
{
    filename = param.toString("filename");
    stream   = nullptr;
}


EmitterFichierRAW::~EmitterFichierRAW()
{
    if (stream != NULL){
        fclose( stream );
    }
}


void EmitterFichierRAW::initialize()
{
    stream = fopen(filename.c_str(), "wb");

    if (stream == nullptr){
        fprintf(stderr, "RadioFichierRAW::initialize() error during file openning (%s) !\n", filename.c_str());
        exit( -1 );
    }
}


void EmitterFichierRAW::start_engine()
{

}


void EmitterFichierRAW::stop_engine ()
{

}


void EmitterFichierRAW::close()
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

void EmitterFichierRAW::emission( std::vector<int8_t>& cbuffer )
{
    // On genere "length" données aléatoires
#ifdef _STORE_ZERO_
    const uint32_t length = cbuffer.size() / 2;
    int8_t* buff = new int8_t[length];
    for(int i = 0; i < length; i += 1)
        buff[i] = (rand()%3) - 1;
    fwrite(buff, length, sizeof(int8_t), stream);
#endif

    // On genere copie les N données "length" dans le fichier
    fwrite(cbuffer.data(), cbuffer.size(), sizeof(int8_t), stream);
//    std::cout << "Writing " << cbuffer.size() << " data in file\n";

#ifdef _STORE_ZERO_
    // On genere "length" données aléatoires
    for(int i = 0; i < length; i += 1)
        buff[i] = (rand()%3) - 1;
    // On copie ces données dans le flux
    fwrite(buff, length, sizeof(int8_t), stream);
    // On nettoye le contexte
    delete[] buff;
#endif
}

void EmitterFichierRAW::set_txvga_gain(uint32_t value)
{

}


void EmitterFichierRAW::reset()
{
    fprintf(stderr, "RadioFichierRAW::reset() not implemented yet !\n");
    exit( -1 );
}


