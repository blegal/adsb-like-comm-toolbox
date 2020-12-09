#include "ReceiverFileRAW.hpp"


ReceiverFileRAW::ReceiverFileRAW(std::string filen) : Receiver(0, 0)
{
    filename = filen;
}


ReceiverFileRAW::~ReceiverFileRAW()
{

}


void ReceiverFileRAW::initialize()
{
    auto start   = chrono::high_resolution_clock::now();

    FILE* stream = fopen(filename.c_str(), "rb");

    if (stream == NULL){
        fprintf(stderr, "ReceiverFileRAW::initialize() error during file openning (%s) !\n", filename.c_str());
        exit( -1 );
    }

    fseek(stream, 0L, SEEK_END);        // On se place a la fin du fichier
    uint32_t fileSize = ftell(stream);  // On recupere la position actuelle
    fseek(stream, 0L, SEEK_SET);        // On se repositionne au debut du fichier

    data.resize( fileSize );
    fread(data.data(), 1, fileSize, stream);

    // Construction de l'histogramme
//    for(uint32_t i = 0; i < fileSize; i += 1 )
//        array[ 128 + data[i] ] += 1;
    // Fin de histogramme


    auto stop  = chrono::high_resolution_clock::now();
    auto timer = chrono::duration_cast<chrono::milliseconds>(stop - start).count();
    std::cout << "(II) Time required to load the " << (fileSize/1024) << " kB is equal to " << timer << " ms" << std::endl;

    fclose(stream);
}


void ReceiverFileRAW::reception(std::vector< std::complex<float> >& cbuffer)
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


void ReceiverFileRAW::reset()
{
    fprintf(stderr, "RadioFichier::reset() not implemented yet !\n");
    exit( -1 );
}


void ReceiverFileRAW::start_engine()
{

}


void ReceiverFileRAW::stop_engine()
{

}


