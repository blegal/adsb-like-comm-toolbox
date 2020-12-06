#ifndef _FPGA_target_
#define _FPGA_target_

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <vector>
#include <cstdio>
#include <cstdlib>
#include <unistd.h>
#include <string.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netdb.h>

using namespace std;

class FPGA_target{
protected :
    int sockfd, portno;
    struct sockaddr_in serv_addr;
    struct hostent *server;

public :
    FPGA_target();

	~FPGA_target();

    void execute(const uint8_t* ibuffer, const uint32_t length);
};

#endif
