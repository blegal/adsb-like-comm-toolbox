//
// Created by alexis on 28/08/17.
//

#ifndef MATRIX_GENDECODERINTRAAPI_H
#define MATRIX_GENDECODERINTRAAPI_H

#include "GenDecoder.hpp"
#include "vect_m256i.hpp"

#define  xMS   0
#define xOMS   1
#define xNMS   2
#define xNMS2  3

template<class SIMD = __m256i>
class GenDecoderIntraAPI : public GenDecoder
{
public:
	GenDecoderIntraAPI(unsigned int _N_, unsigned int _M_);
	virtual ~GenDecoderIntraAPI();
	virtual bool decode(const int8_t llrs[], uint8_t dbits[]) = 0;

	virtual unsigned int n()    = 0;
	virtual unsigned int k()    = 0;
	virtual unsigned int msgs() = 0;

	virtual unsigned int frames() = 0; // 1
	virtual unsigned int simd()   = 0; // 32

	virtual std::string date() = 0;
	virtual std::string time() = 0;

	virtual void setOffset(unsigned char v) = 0;
	virtual void setFactor(unsigned char f) = 0;
	virtual void setFactor(unsigned char f1, unsigned char f2) = 0;

	virtual unsigned char getParam1() = 0;
	virtual unsigned char getParam2() = 0;

protected:
	int8_t*  org_nodes;
	int8_t*  var_nodes;
	SIMD* var_mesgs;

	unsigned char param1;
	unsigned char param2;
};

template<class SIMD>
GenDecoderIntraAPI<SIMD>::GenDecoderIntraAPI(unsigned int _N_, unsigned int _M_)
{
	//org_nodes   = (int8_t*)new SIMD[];
	int r1 = posix_memalign((void**)&org_nodes, sizeof(SIMD), sizeof(SIMD) * (_N_ + 4));
    int r2 = posix_memalign((void**)&var_mesgs, sizeof(SIMD), sizeof(SIMD) * (_M_ + 4));

    if( (r1 + r2) != 0 ){
        printf("Error in memory allocation...\n");
        exit( 0 );
    }

    var_nodes   = org_nodes + 2 * sizeof(SIMD);
	memset(org_nodes, -113, sizeof(SIMD) * (_N_ + 4));

	//var_mesgs   = new SIMD[_M_ + 8];

	memset(var_mesgs, -113, sizeof(SIMD) * (_M_ + 4));

	s_criterion = false;
	nIters      = 10;
	execIters   =  0;


}

template<class SIMD>
GenDecoderIntraAPI<SIMD>::~GenDecoderIntraAPI()
{
	free( org_nodes );
	free( var_mesgs );
}


#endif //MATRIX_GENDECODERINTRAAPI_H
