/*
 *  Adder.h
 *  SystemC_SimpleAdder
 *
 *  Created by Le Gal on 07/05/07.
 *  Copyright 2007 __MyCompanyName__. All rights reserved.
 *
 */
#ifndef _Constantes_
#define _Constantes_

#define _BYTE_HEADER_    8
#define _BYTE_PAYLOAD_  60
#define _BYTE_CRC_       4

// #define _BITS_TYPE_     (8 * _BYTE_TYPE_)
// #define _BITS_LENGTH_   (8 * _BYTE_LENGTH_)
#define _BITS_PAYLOAD_  (8 * _BYTE_PAYLOAD_)
#define _BITS_HEADER_   (8 * _BYTE_HEADER_)
#define _BITS_CRC_      (8 * _BYTE_CRC_)

#define FRAME_INFOS         0x11 // 1111 0000
#define FRAME_NEW_IMAGE     0x22 // 0000 1111
#define FRAME_END_IMAGE     0x33 // 1100 1100
#define FRAME_EMPTY         0x66 // 1001 1001

#define _IMAGE_WIDTH_   640
#define _IMAGE_HEIGHT_  480

#endif
