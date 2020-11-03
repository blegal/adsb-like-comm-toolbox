#ifndef __TemporalHistogram__
#define __TemporalHistogram__

#include <SFML/Audio.hpp>
#include <SFML/Graphics.hpp>
#include "SoundView.h"

#include <iomanip>
#include <iostream>
#include <sstream>
#include <cmath>
#include <cassert>

using namespace std;

class TemporalHistogram
{
public:
    TemporalHistogram( std::vector<int16_t>& buffer, const uint32_t start, const uint32_t stop );

    ~TemporalHistogram();

public:
    float minv;
    float maxv;
    int32_t*  histo;
};

#endif
