#ifndef _PROTECTION_COPY_
#define _PROTECTION_COPY_


inline void my_copy(__m256i* dst, const __m256i* src, const int length){
    for(int i = 0; i < length; i++)
    {
        const auto val = _mm256_loadu_si256(src + i); // en mode burst (Q trames chainées), l'alignement des
        _mm256_storeu_si256(dst+i, val);              // données n'est plus garanti donc loadu + storeu obligatoires
    }
}

inline void my_copy(__m128i* dst, const __m128i* src, const int length){
    for(int i = 0; i < length; i++)
    {
        const auto val = _mm_loadu_si128(src + i); // en mode burst (Q trames chainées), l'alignement des
        _mm_storeu_si128(dst+i, val);              // données n'est plus garanti donc loadu + storeu obligatoires
    }
}


/*
template <int length>
inline void my_copy(TYPE* dst, const TYPE* src){
	constexpr int vstop  = length / 32;
	constexpr int sstart = 32 * vstop;

    for(int i = 0; i < vstop; i++)
    {
        const TYPE val = _mm256_loadu_si256(src + i);   //  en mode burst (Q trames chainées), l'alignement des
        _mm256_storeu_si256(dst + i, val);              // données n'est plus garanti donc loadu + storeu obligatoires
    }

	constexpr int usefull = length % 32;
	if( usefull != 0 ){
		char* ssrc = (char*)(src);
		char* sdst = (char*)(dst);
	    for(int i = sstart; i < length; i++)
	    {
	    	sdst[i] = ssrc[i];
	    }
	}

}
*/

template <int length, int frames>
inline void my_copy(__m256i* dst, const __m256i* src)
{
    char* SRC = (char*)src;
    char* DST = (char*)dst;
    for (int i = 0; i < length/frames; i++)
    {
        for (int z = 0; z < frames; z++)
            DST[frames * i + z] = SRC[z * (length/frames) + i];
    }
};

template <int length, int frames>
inline void my_copy(__m128i* dst, const __m128i* src)
{
    //    printf("ici length(%d, %d)\n", length, frames);
    char* SRC = (char*)src;
    char* DST = (char*)dst;
    for (int i = 0; i < length/frames; i++)
    {
        for (int z = 0; z < frames; z++)
            DST[frames * i + z] = SRC[z * (length/frames) + i];
    }
};

/*
template <int length, int frames>
inline void my_copy(TYPE* dst, const TYPE* src) {
    if (frames == 1) {
	    constexpr int vstop  = length / 32;
	    constexpr int sstart = 32 * vstop;
	
	    for(int i = 0; i < vstop; i++) {
		    const TYPE val = _mm256_loadu_si256(src + i);   //  en mode burst (Q trames chainées), l'alignement des
		    _mm256_storeu_si256(dst + i, val);              // données n'est plus garanti donc loadu + storeu obligatoires
	    }
	
	    constexpr int usefull = length % 32;
	    if( usefull != 0 ) {
		    char* ssrc = (char*)(src);
		    char* sdst = (char*)(dst);
		    for(int i = sstart; i < length; i++)
			    sdst[i] = ssrc[i];
	    }
    } else if (frames % 2 != 0) {
        printf("Error, only pair frames. Here frames = %d\n", frames);
        exit(0);
    } else {
        if (frames == 2) {
            char *SRC = (char *) src;
            char *DST = (char *) dst;
            int lim = length / 32;
            
            for (int z = 0; z < (lim + 1) / 2; z++) {
                __m256i one0 = _mm256_loadu_si256((__m256i const *) (SRC + 32 * z));
                __m256i one1 = _mm256_loadu_si256((__m256i const *) (SRC + (length / 2) + (32 * z)));
                
                __m256i two0 = _mm256_unpacklo_epi8(one0, one1);
                __m256i two1 = _mm256_unpackhi_epi8(one0, one1);
                
                one0 = _mm256_permute2x128_si256 (two0, two1, 0x20);
                one1 = _mm256_permute2x128_si256 (two0, two1, 0x31);
                
                _mm256_storeu_si256((__m256i *) (DST + 32 * 2 * z), one0);
                _mm256_storeu_si256((__m256i *) (DST + 32 * (2 * z + 1)), one1);
            }
            if (length%32 != 0) {
                int bwd = 0;
                for (int k = 32*lim; k < length; k++) {
                    if ( (k & 0x01) == 0)
                        DST[k] = SRC[k];
                    else {
                        DST[k] = SRC[(length + 32*lim)/2 + bwd];
                        bwd++;
                    }
                }
            }
        } else {
            unsigned char TMP[length];
            
            my_copy<length, frames / 2>((__m256i *) TMP, (__m256i *) src);
            my_copy<length, 2>((__m256i *) dst, (__m256i *) TMP);
        }
    }
}
*/

namespace vect{

};


#endif
