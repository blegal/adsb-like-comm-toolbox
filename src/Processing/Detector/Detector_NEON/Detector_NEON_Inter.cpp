#include "Detector_NEON_Inter.hpp"

#if defined(__ARM_NEON)
    #include <arm_neon.h>
#endif

Detector_NEON_Inter::Detector_NEON_Inter() : Detector(1)
{

}


void Detector_NEON_Inter::execute(std::vector<float>* iBuffer, std::vector<float>* oBuffer)
{
#if defined(__ARM_NEON)
    const uint32_t ll = iBuffer->size();

    if( oBuffer->size() != ll )
        oBuffer->resize( ll );

    float* ptr_i = iBuffer->data();
    float* ptr_o = oBuffer->data();

    const float32x4_t huit = vdupq_n_f32( 8.0f );
    for(uint32_t i = 0; i < ll - 32; i += sizeof(float32x4_t))
    {
        const float* ptr = (ptr_i + i);
        const float32x4_t a0 = vld1q_f32(ptr +   0);
        const float32x4_t b0 = vld1q_f32(ptr +   1);

        const float32x4_t a1 = vld1q_f32(ptr +   3);
        const float32x4_t b1 = vld1q_f32(ptr +   4);

        const float32x4_t a2 = vld1q_f32(ptr +  14);
        const float32x4_t b2 = vld1q_f32(ptr +  15);

        const float32x4_t a3 = vld1q_f32(ptr +  18);
        const float32x4_t b3 = vld1q_f32(ptr +  19);

        const float32x4_t c0 = (a0 + b0) + (a1 + b1) + (a2 + b2) + (a3 + b3);

        float32x4_t accu = vdupq_n_f32( 0.0f );
        #pragma unroll 32
        for(uint32_t k = 0; k < 32; k += 1)
        {
            const float32x4_t dt = vld1q_f32(ptr + k);
            accu += (dt * dt);
        }
        const float32x4_t sum   = vmulq_f32 (accu, huit);
        const float32x4_t sqr   = vsqrtq_f32(sum);
        const float32x4_t score = vdivq_f32 (c0, sqr);

        vst1q_f32( ptr_o + i, score );
    }

#else
    printf("Le decodeur instancie pour realiser le traitement est le Detector_NEON_Inter, mais ce dernier");
    printf("ne peut pas fonctionner sur le systeme hote...");
    exit( EXIT_FAILURE );
#endif
}
