#include <cstdio>
#include <cstdlib>
#include <iostream>
#include <fstream>
#include <vector>
#include <algorithm>
#include <ctime>

#include "./vector/vectorclass.h"


int main(int argc, char *argv[]) {

    std::cout << "(II) A little program developped by B. LE GAL for teaching purpose (" << __DATE__ << " " << __TIME__ << ")" << std::endl;
    std::cout << "(II) In converts a WAV/MP3/OGG file to a VHDL ROM for FPGA implementation" << std::endl;

    float a[8], b[8], c[8];

    for(int i = 0; i < 8; i += 1)
    {
        a[i] = +i;
        b[i] = -i;
    }

    Vec8f avec, bvec, cvec;
    avec.load(a);
    bvec.load(b);

    cvec = avec * bvec * 1.5f;

    cvec.store(c);

    for (int i = 0; i < cvec.size(); i++) {
        printf(" %1.3f", c[i]); }
    printf("\n");

    Vec8f dvec = permute8<0,V_DC,1,V_DC,2,V_DC,3,V_DC>(cvec); // b = (12, 12, 13, 10)
    Vec8f evec = permute8<4,V_DC,5,V_DC,6,V_DC,7,V_DC>(cvec); // b = (12, 12, 13, 10)
    dvec.store(c);

    for (int i = 0; i < cvec.size(); i++) {
        printf(" %1.3f", c[i]); }
    printf("\n");
//    dvec = add_saturated(dvec, dvec);
    evec.store(c);
    for (int i = 0; i < cvec.size(); i++) {
        printf(" %1.3f", c[i]); }
    printf("\n");

    return 0;
}
