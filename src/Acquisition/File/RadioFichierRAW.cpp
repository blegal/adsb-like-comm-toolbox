#include "RadioFichierRAW.hpp"

void printHistogram(int array[], int N)
{
    int scale = 8;
    int n = N / scale;
    int arr[n];

    int Sum = 0;
    for(int i = 0; i < N; i += scale)
    {
        int sum  = array[i];
        for(int j = 0; j < scale; j += 1)
            sum += array[i+j];
        Sum     += sum;
        arr[i/scale] = sum;
    }

    for(int i = 0; i < n; i += 1)
        arr[i] = (100 * arr[i]) / Sum;

    int maxEle = *max_element(arr, arr + n);
    for (int i = maxEle; i >= 0; i--) {
        cout.width(2);
        cout << right << i << " | ";
        for (int j = 0; j < n; j++) {

            // if array of element is greater
            // then array it print x
            if (arr[j] >= i)
                cout << " x ";

                // else print blank spaces
            else
                cout << "   ";
        }
        cout << "\n";
    }

    // print last line denoted by ----
    for (int i = 0; i < n + 3; i++)
        cout << "---";

    cout << "\n";
    cout << "     ";

    for (int i = 0; i < n; i++) {
        cout.width(2); // width for a number
        cout << right << arr[i] << " ";
    }
}

RadioFichierRAW::RadioFichierRAW(std::string filen) : Radio(0, 0)
{
    filename = filen;

//    for(uint32_t i = 0; i < 256; i += 1 )
//        array[ i ] = 0;

}

#if 0
RadioFichierRAW::RadioFichierRAW(Parameters& param) : Radio(0, 0)
{
    filename = param.toString("filename");
}
#endif

RadioFichierRAW::~RadioFichierRAW()
{
//    printHistogram(array, 256);
}


void RadioFichierRAW::initialize()
{
    auto start   = chrono::high_resolution_clock::now();

    FILE* stream = fopen(filename.c_str(), "rb");

    if (stream == NULL){
        fprintf(stderr, "RadioFichierRAW::initialize() error during file openning (%s) !\n", filename.c_str());
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


