OBJS	= send_image_16bpp.o
SOURCE	= send_image_16bpp.cpp
HEADER	= ../Tools/BMP.hpp
OUT	= send_image_16bpp
CC	 = g++

FLAGS	 = -g -c -Wall
LFLAGS	 =

all: $(OBJS)
	$(CC) -g $(OBJS) -o $(OUT) $(LFLAGS)

send_image_16bpp.o: send_image_16bpp.cpp
	$(CC) $(FLAGS) send_image_16bpp.cpp -std=c++11


clean:
	rm -f $(OBJS) $(OUT)
