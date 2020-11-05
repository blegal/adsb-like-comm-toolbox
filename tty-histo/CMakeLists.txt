cmake_minimum_required(VERSION 3.5)

project(tty_histo)

SET(CMAKE_CXX_STANDARD 14)

SET(CMAKE_CXX_FLAGS        "-Ofast -g0 -march=native -mtune=native")
SET(CMAKE_EXE_LINKER_FLAGS "-lncurses")

SET(SOURCE_FILES
        src/tty_histo.cpp
        )

add_executable(tty_histo ${SOURCE_FILES})
target_link_libraries(tty_histo)

