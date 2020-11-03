#include "ConversionNEON.hpp"

#if defined(__ARM_NEON)
    #include <arm_neon.h>
#endif

void ConversionNEON::execute(std::vector< std::complex<float> >* buffer_in, std::vector<float>* buffer_out)
{
#if defined(__ARM_NEON)
    if( buffer_in->size() != buffer_out->size() )
    {
      buffer_out->resize( buffer_in->size() );
    }

    const uint32_t length = buffer_in->size();

    float* ptr_i = (float*)buffer_in->data();
    float* ptr_o = (float*)buffer_out->data();

    float32x4x2_t dataS = vld2q_f32( ptr_i );
    float32x4_t   p0    = vmulq_f32(dataS.val[0], dataS.val[0]);
    float32x4_t   p1    = vmulq_f32(dataS.val[1], dataS.val[1]);
    float32x4_t   resul = vaddq_f32(p0, p1);
    vst1q_f32(ptr_o, resul);
    ptr_i += (4 * 2);
    ptr_o += (4);

    for(int kk = 0; kk < length; kk += 1)
    {
        const float breal = ptr_i[2 * kk + 0];
        const float bimag = ptr_i[2 * kk + 1];
        const float resul = sqrt( breal * breal + bimag * bimag);
        ptr_o[kk] = resul;
    }

#else
    exit( -1 );
#endif
}
