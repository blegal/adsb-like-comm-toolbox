#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <complex>
#include <chrono>
#include <vector>

#ifndef _Conversion_
#define _Conversion_

class Conversion
{
  virtual void execute(std::vector< std::complex<float> >* buffer_in, std::vector<float>* buffer_out) = 0;
};

#endif