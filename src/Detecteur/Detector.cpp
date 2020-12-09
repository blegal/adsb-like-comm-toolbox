#include "Detector.hpp"


Detector::Detector(const uint32_t size)
{
    array.resize(size);

}


Detector::~Detector()
{
	
}


uint32_t Detector::nElements()
{
    return array.size();
}


float Detector::getValue(uint32_t p)
{
    return array.at(p);
}
