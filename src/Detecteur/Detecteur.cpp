#include "Detecteur.hpp"


Detecteur::Detecteur(const uint32_t size)
{
    array.resize(size);

}


Detecteur::~Detecteur()
{
	
}


uint32_t Detecteur::nElements()
{
    return array.size();
}


float Detecteur::getValue(uint32_t p)
{
    return array.at(p);
}
