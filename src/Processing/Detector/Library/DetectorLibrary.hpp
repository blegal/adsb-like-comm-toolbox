#ifndef _DetectorLibrary_
#define _DetectorLibrary_

#include "../Detector.hpp"
#include "../../../Tools/Parameters/Parameters.hpp"

using namespace std;

class DetectorLibrary{
protected:

public :
    DetectorLibrary( );
	~DetectorLibrary();

    static Detector* allocate(Parameters& param);
};

#endif