#include "DetectorLibrary.hpp"

#include "../Detector_x86/Detector_x86.hpp"
#include "../Detector_AVX2/Detector_AVX2.hpp"
#include "../Detector_NEON/Detector_NEON_Intra.hpp"
#include "../Detector_NEON/Detector_NEON_Inter.hpp"
#include "../Detector_NEON/Detector_NEON_Accu.hpp"

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
        detect = new Detector_x86();
    } else if( param.toString("mode_corr") == "AVX2" ){
        detect = new Detector_AVX2();
    } else if( param.toString("mode_corr") == "NEON" ){
        detect = new Detector_NEON();
    } else if( param.toString("mode_corr") == "NEON_Inter" ){
        detect = new Detector_NEON_Inter();
    } else if( param.toString("mode_corr") == "NEON_Accu" ){
        detect = new Detector_NEON_Accu();
    }
    else
    {
        std::cout << "(EE) Le type de module de Correlation demandé n'est actuellement pas dispnible :" << std::endl;
        std::cout << "(EE) type = " << param.toString("mode_corr")                                   << std::endl;
        exit( EXIT_FAILURE );
    }
    return detect;
}
