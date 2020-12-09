#include "DetectorLibrary.hpp"

#include "../INTER_x86/DetectorScalar.hpp"
#include "../INTRA_AVX2/Detector_AVX2.hpp"
#include "../INTRA_NEON/Detector_NEON.hpp"

DetectorLibrary::DetectorLibrary()
{

}


DetectorLibrary::~DetectorLibrary()
{

}

Detector* DetectorLibrary::allocate(Parameters& param)
{
    Detector* detect;
    if( param.toString("mode_corr") == "scalar" ){
        detect = new DetectorScalar();
    } else if( param.toString("mode_corr") == "AVX2" ){
        detect = new Detector_AVX2();
    } else if( param.toString("mode_corr") == "NEON" ){
        detect = new Detector_NEON();
    }
    else
    {
        std::cout << "(EE) Le type de module de Correlation demandé n'est actuellement pas dispnible :" << std::endl;
        std::cout << "(EE) type = " << param.toString("mode_corr")                                   << std::endl;
        exit( -1 );
    }
    return detect;
}
