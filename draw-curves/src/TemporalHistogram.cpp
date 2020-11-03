#include "TemporalHistogram.h"

TemporalHistogram::TemporalHistogram( std::vector<int16_t>& buffer, const uint32_t start, const uint32_t stop ){
    histo = new int32_t[256];

    for (std::size_t i = 0; i < 256; i++)
    {
        histo[i] = 0;
    }

    short* ptr = buffer.data();

    for (uint32_t i = start; i < stop; i += 1)
    {
        const uint32_t amp = (ptr[i] + 128);
        assert( amp >=   0 );
        assert( amp <= 255 );
        histo[amp] += 1;
    }

    minv = 65536.0;
    maxv =     0.0;
    for (std::size_t i = 0; i < 256; ++i)
    {
        minv = minv < histo[i] ? minv : histo[i];
        maxv = maxv > histo[i] ? maxv : histo[i];
    }
}

TemporalHistogram::~TemporalHistogram(){
    delete histo;
}