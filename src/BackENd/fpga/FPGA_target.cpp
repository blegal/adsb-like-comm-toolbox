#include "FPGA_target.hpp"

void error(const char *msg)
{
    perror(msg);
    exit(0);
}

FPGA_target::FPGA_target()
{
    portno = 57345;
    sockfd = socket(AF_INET, SOCK_STREAM, 0);
    if (sockfd < 0)
        error("ERROR opening socket");

    server = gethostbyname( "192.168.1.15" );
    if (server == NULL) {
        fprintf(stderr,"ERROR, no such host\n");
        exit(0);
    }

    serv_addr.sin_family = AF_INET;
    bcopy((char *)server->h_addr,
          (char *)&serv_addr.sin_addr.s_addr,
          server->h_length);

    serv_addr.sin_port = htons(portno);

    if (connect(sockfd, (struct sockaddr *) &serv_addr, sizeof(serv_addr)) < 0)
        error("ERROR connecting");

}


FPGA_target::~FPGA_target()
{
    close(sockfd);
}


void FPGA_target::execute(Frame* f)
{
    const uint32_t n = write(sockfd, f->payload_to_emit(), f->payload_size());
    if (n != f->payload_size())
        error("ERROR the overall data were not delivered...\n");
    if (n < 0)
        error("ERROR writing to socket...\n");

}
