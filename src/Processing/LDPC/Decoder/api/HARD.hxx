#ifndef _PROTECTION_HARD_
#define _PROTECTION_HARD_

/*
inline void HARD(TYPE* dst, TYPE* src, int length){
	const __m256i mask = _mm256_set1_epi8( 0x01 );
	const TYPE zero    = _mm256_setzero_si256();
	for(int i=0; i<length; i++)
	{
		const TYPE  val = _mm256_loadu_si256(src +   i); // en mode burst (Q trames chainées), l'alignement des
		const TYPE res1 = _mm256_cmpgt_epi8(val, zero); // données n'est plus garanti donc loadu + storeu obligatoires
		const TYPE res2 = _mm256_cmpeq_epi8(val, zero);
		const TYPE res3 = _mm256_or_si256(res1,  res2);
		const TYPE res4 = _mm256_and_si256(res3, mask);
		//const TYPE res3 = VECTOR_SIGN_BIT(val);
		//const TYPE res4 = _mm256_and_si256(res3,  mask);
		_mm256_storeu_si256(dst+i, res4);                // cf. ci-dessus
	}
}
 */

/*
template <int length>
inline void HARD(TYPE* dst, TYPE* src){
	constexpr int vstop  = length / 32;
	constexpr int sstart = 32 * vstop;

	//
	// PARTIE VECTORISEE
	//
	const __m256i mask = _mm256_set1_epi8( 0x01 );
    const TYPE zero    = _mm256_setzero_si256();
    for(int i=0; i<vstop; i++) {
        const TYPE  val = _mm256_loadu_si256(src +   i); // en mode burst (Q trames chainées), l'alignement des
        const TYPE res1 = _mm256_cmpgt_epi8(val, zero);  // données n'est plus garanti donc loadu + storeu obligatoire
        const TYPE res2 = _mm256_cmpeq_epi8(val, zero);
        const TYPE res3 = _mm256_or_si256(res1,  res2);
        const TYPE res4 = _mm256_and_si256(res3, mask);
        _mm256_storeu_si256(dst+i, res4);                // cf. ci-dessus
    }

    //
	// PARTIE SEQUENTIELLE
	//
	constexpr int usefull = length % 32;
	if( usefull != 0 ){
		char* ssrc = (char*)(src);
		char* sdst = (char*)(dst);
	    for(int i = sstart; i < length; i++) {
	    	sdst[i] = (ssrc[i] >= 0); // => > -1 ??
	    }
	}
    //exit( 0 );
}
*/

template <int length, int frames>
inline void HARD(__m256i* dst, const __m256i* src) {
    char* SRC = (char*)src;
    char* DST = (char*)dst;
    for (int i = 0; i < length/frames; i++) {
        for (int z = 0; z < frames; z++)
            DST[z * (length/frames) + i] = ( SRC[frames * i + z] >= 0 );
    }
};

template <int length, int frames>
inline void HARD(__m128i* dst, const __m128i* src) {
    char* SRC = (char*)src;
    char* DST = (char*)dst;
    for (int i = 0; i < length/frames; i++) {
        for (int z = 0; z < frames; z++)
            DST[z * (length/frames) + i] = ( SRC[frames * i + z] >= 0 );
    }
};

/*
template <int length, int frames>
inline void HARD(TYPE* dst, const TYPE* src) {
    if (frames == 1) {
	    constexpr int vstop  = length / 32;
	    constexpr int sstart = 32 * vstop;
	
	    //
	    // PARTIE VECTORISEE
	    //
	    const __m256i mask = _mm256_set1_epi8( 0x01 );
	    const TYPE zero    = _mm256_setzero_si256();
	    for(int i=0; i<vstop; i++) {
		    const TYPE  val = _mm256_loadu_si256(src +   i); // en mode burst (Q trames chainées), l'alignement des
		    const TYPE res1 = _mm256_cmpgt_epi8(val, zero);  // données n'est plus garanti donc loadu + storeu obligatoire
		    const TYPE res2 = _mm256_cmpeq_epi8(val, zero);
		    const TYPE res3 = _mm256_or_si256(res1,  res2);
		    const TYPE res4 = _mm256_and_si256(res3, mask);
		    _mm256_storeu_si256(dst+i, res4);                // cf. ci-dessus
	    }
	
	    //
	    // PARTIE SEQUENTIELLE
	    //
	    constexpr int usefull = length % 32;
	    if( usefull != 0 ){
		    char* ssrc = (char*)(src);
		    char* sdst = (char*)(dst);
		    for(int i = sstart; i < length; i++) {
			    sdst[i] = (ssrc[i] >= 0); // => > -1 ??
		    }
	    }
    } else if ( (frames & 0x01) != 0) {
        printf("Error, only pair frames. Here frames = %d\n", frames);
        exit(0);
    } else if (frames == 2) {
        char *SRC = (char *) src;
        char *DST = (char *) dst;
        const __m256i mask = _mm256_set1_epi8(0x01);
        const TYPE zero    = _mm256_setzero_si256();
        int lim = (length + 31) / 32;
    
        for (int z = 0; z < (lim + 1) / 2; z++) {
            __m256i one0 = _mm256_loadu_si256((__m256i const *) (SRC + 32 * (2 * z)));
            __m256i one1 = _mm256_loadu_si256((__m256i const *) (SRC + 32 * (2 * z + 1)));
        
            __m256i two0 = _mm256_permute2x128_si256 (one0, one1, 0x20);
            __m256i two1 = _mm256_permute2x128_si256 (one0, one1, 0x31);
        
            one0 = _mm256_unpacklo_epi8(two0, two1);
            one1 = _mm256_unpackhi_epi8(two0, two1);
            two0 = _mm256_unpacklo_epi8(one0, one1);
            two1 = _mm256_unpackhi_epi8(one0, one1);
            one0 = _mm256_unpacklo_epi8(two0, two1);
            one1 = _mm256_unpackhi_epi8(two0, two1);
            two0 = _mm256_unpacklo_epi8(one0, one1);
            two1 = _mm256_unpackhi_epi8(one0, one1);
    
            one0 = _mm256_cmpgt_epi8(two0, zero);
            one1 = _mm256_cmpeq_epi8(two0, zero);
            two0 = _mm256_or_si256 (one0,  one1);
            two0 = _mm256_and_si256(two0,  mask);
            _mm256_storeu_si256((__m256i *) (DST + 32*z ), two0);
    
            one0 = _mm256_cmpgt_epi8(two1, zero);
            one1 = _mm256_cmpeq_epi8(two1, zero);
            two1 = _mm256_or_si256 (one0,  one1);
            two1 = _mm256_and_si256(two1,  mask);
            _mm256_storeu_si256((__m256i *) (DST + length/frames + 32*z), two1);
        }
    
        if (length%32 != 0) {
            int bwd = 0;
            for (int k = 32*lim; k < length; k++) {
                if ( (k & 0x01) == 0)
                    DST[k/2] = ( SRC[k] >= 0 );
                else {
                    DST[(length + 32*lim)/2 + bwd] = ( SRC[k] >= 0 );
                    bwd++;
                }
            }
        }
    } else {
        unsigned char TMP[length];
    
        HARD<length, frames/2>((__m256i *) TMP, (__m256i *) src);
        HARD<length, 2>((__m256i *) dst, (__m256i *) TMP);
    }
}
*/

namespace vect{
	
};


#endif

