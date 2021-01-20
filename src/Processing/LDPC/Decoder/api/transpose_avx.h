/* 
 * File:   Code_Analyzer.hpp
 * Author: cleroux
 *
 * Created on September 17, 2013, 9:49 AM
 */

#ifndef DATA_INTERLEAVERS_avx_HPP
#define	DATA_INTERLEAVERS_avx_HPP

#include <xmmintrin.h>
#include <smmintrin.h>
#include <immintrin.h>
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <cassert>

void uchar_transpose_avx(__m256i *src, __m256i *dst, int n);

void uchar_itranspose_avx(__m256i *src, __m256i *dst, int n);

void uchar_itranspose_2_avx(__m256i *src, __m256i *dst, int n);

//#include "transpose_avx.cpp"

#endif	/* DATA_INTERLEAVERS_HPP */

