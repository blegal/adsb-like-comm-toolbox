#ifndef _Frame_Type_
#define _Frame_Type_

#define FRAME_INFOS         0xF0 // 1111 0000
#define FRAME_NEW_IMAGE     0x0F // 0000 1111
#define FRAME_END_IMAGE     0xCC // 1100 1100
#define FRAME_NEW_LINE      0x33 // 0011 0011
#define FRAME_END_LINE      0xAA // 1010 1010
#define FRAME_EMPTY         0x99 // 1001 1001

#define str_FRAME_INFOS         "FRAME_INFOS   "
#define str_FRAME_NEW_IMAGE     "FRAME_NEW_IMG "
#define str_FRAME_END_IMAGE     "FRAME_END_IMG "
#define str_FRAME_NEW_LINE      "FRAME_NEW_LINE"
#define str_FRAME_END_LINE      "FRAME_END_LINE"
#define str_FRAME_EMPTY         "FRAME_EMPTY   "

#endif