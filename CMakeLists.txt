cmake_minimum_required(VERSION 3.5)

set(CMAKE_CXX_FLAGS "                   -Wall -Ofast -march=native -mtune=native")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -I/usr/local/opt/hackrf/include")            # HackRF
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -I/usr/local/Cellar/boost/1.74.0/include")   # Boost
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -I/usr/local/Cellar/uhd/3.15.0.0_2/include") # UHD
#set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Rpass=loop-vectorize -Rpass-missed=loop-vectorize") # UHD

set(CMAKE_EXE_LINKER_FLAGS "                          /usr/local/lib/libboost_filesystem-mt.dylib") # UHD
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} /usr/local/lib/libboost_system-mt.dylib") # UHD
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} /usr/local/opt/hackrf/lib/libhackrf.a") # UHD
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} /usr/local/opt/libusb/lib/libusb-1.0.a") # UHD
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} /usr/local/Cellar/uhd/3.15.0.0_2/lib/libuhd.dylib") # UHD
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -framework CoreFoundation -framework IOKit") # UHD
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -lncurses") # UHD

set(CMAKE_CXX_STANDARD 17)

########################################################################################################################

project(adsb_receiver)

set(SOURCE_FILES
        src/CRC/CRC32b.cpp
        src/Frame/Frame.cpp
        src/RingBuff/RingBuff.cpp
        src/Tools/Parameters.cpp
        src/Conversion/Conversion.cpp
        src/Conversion/INTER_x86/ConversionScalar.cpp
        src/Conversion/INTER_NEON/ConversionNEON.cpp
        src/Conversion/INTER_AVX2/ConversionAVX2.cpp
        src/Acquisition/Radio.cpp
        src/Acquisition/Radio/ReceiverUSRP.cpp
        src/Acquisition/Radio/RadioHackRF.cpp
        src/Acquisition/Radio/ReceiverHackRF.cpp
        src/Acquisition/File/RadioFichierRAW.cpp
        src/Acquisition/File/RadioFichierUHD.cpp
        src/PPM/Demodulator/PPM_Demodulator.cpp
        src/IQ/Removing/IQ_Removing.cpp
        src/Sampling/Down/DownSampling.cpp
        src/Detecteur/Detecteur.cpp
        src/Detecteur/INTER_x86/DetecteurScalar.cpp
        src/Detecteur/INTRA_NEON/Detecteur_NEON.cpp
        src/Detecteur/INTRA_AVX2/Detecteur_AVX2.cpp
        src/receiver.cpp
        )

add_executable(adsb_receiver ${SOURCE_FILES})

########################################################################################################################

project(tty_histo)

SET(SOURCE_FILES
        src/RingBuff/RingBuff.cpp
        src/tty_histo.cpp
        )

add_executable(tty_histo ${SOURCE_FILES})
target_link_libraries(tty_histo)

########################################################################################################################

project(adsb_emitter)

set(SOURCE_FILES
        src/CRC/CRC32b.cpp
        src/Frame/Frame.cpp
        src/RingBuff/RingBuff.cpp
        src/Tools/Parameters.cpp
        src/Acquisition/Radio.cpp
        src/Emitter/Emitter.cpp
        src/Emitter/Radio/EmitterHackRF.cpp
        src/Emitter/File/RadioFichierRAW.cpp

        src/PPM/Modulator/PPM_Modulator.cpp
        src/IQ/Insertion/IQ_Insertion.cpp
        src/Sampling/Up/UpSampling.cpp

        src/PPM/Demodulator/PPM_Demodulator.cpp
        src/IQ/Removing/IQ_Removing.cpp
        src/Sampling/Down/DownSampling.cpp

        src/emitter.cpp
        )

add_executable(adsb_emitter ${SOURCE_FILES})

########################################################################################################################

project(tty_emitter)

SET(SOURCE_FILES
        src/CRC/CRC32b.cpp
        src/Frame/Frame.cpp
        src/RingBuff/RingBuff.cpp
        src/tty_emitter.cpp
        )

add_executable(tty_emitter ${SOURCE_FILES})

########################################################################################################################

project(test_vecto)

SET(SOURCE_FILES
        src/test_vecto.cpp
        )

add_executable(test_vecto ${SOURCE_FILES})

########################################################################################################################

