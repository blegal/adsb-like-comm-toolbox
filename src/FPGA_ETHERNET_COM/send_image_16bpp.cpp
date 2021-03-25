#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netdb.h>
#include "../Tools/BMP.hpp"
using namespace std;
// '192.168.1.15', 57345

void error(const char *msg)
{
    perror(msg);
    exit(0);
}



int main(int argc, char *argv[])
{
    int sockfd, portno, n;
    struct sockaddr_in serv_addr;
    struct hostent *server;

      if (argc < 3) {
       fprintf(stderr,"usage %s hostname port\n", argv[0]);
       exit(0);
    }
    portno = atoi(argv[2]);
    sockfd = socket(AF_INET, SOCK_STREAM, 0);
    if (sockfd < 0)
        error("ERROR opening socket");

    server = gethostbyname(argv[1]);
    if (server == NULL) {
        fprintf(stderr,"ERROR, no such host\n");
        exit(0);
    }

    bzero((char *) &serv_addr, sizeof(serv_addr));

    serv_addr.sin_family = AF_INET;
    bcopy((char *)server->h_addr,
         (char *)&serv_addr.sin_addr.s_addr,
         server->h_length);

    serv_addr.sin_port = htons(portno);

    if (connect(sockfd, (struct sockaddr *) &serv_addr, sizeof(serv_addr)) < 0)
        error("ERROR connecting");


    FILE* f = fopen("/tmp/file.raw", "rb");
		if( f == NULL )
        {
        	cout << "(EE) Error opening the input file (/tmp/file.raw)" << endl;
        	exit( EXIT_FAILURE );
        }
    int8_t buffer[1024];

		while( feof(f) == 0 )
    {
		    uint32_t n = fread(buffer, sizeof(int8_t), 1024, f);
        if (n < 0)
             error("ERROR writing to socket");

        write(sockfd, buffer, n*sizeof(int8_t));

    }
    // uint32_t k = 0;
    // int8_t test_buf[3];
    // test_buf[0]= (int8_t) 255;
    // test_buf[1]= (int8_t) 0;
    // test_buf[2]= (int8_t) 0;
    //
    //
    // while(k < 307200)
    // {
    //     write(sockfd, test_buf, 3*sizeof(int8_t));
    //     k++;
    // }


    printf("(II) The (host 2 fpga) data transfer is now finished.\n");



    close(sockfd);
    return 0;
}
