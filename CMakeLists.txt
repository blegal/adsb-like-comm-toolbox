cmake_minimum_required(VERSION 3.5)

project(adsb_receiver)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake/Modules/")
message("${CMAKE_SOURCE_DIR}/cmake/Modules/")

set(CMAKE_CXX_STANDARD 14)

set(CMAKE_CXX_FLAGS "-Wall -Ofast -march=native -mtune=native -I/usr/local/opt/hackrf/include")
#SET(CMAKE_EXE_LINKER_FLAGS "/usr/local/opt/hackrf/lib/libhackrf.a /usr/local/opt/libusb/lib/libusb-1.0.a -framework CoreFoundation -framework IOKit")
SET(CMAKE_EXE_LINKER_FLAGS "-L/usr/local/opt/hackrf/lib -lhackrf")

set(SOURCE_FILES
        src/CRC/CRC32b.cpp
        src/Frame/Frame.cpp
        src/Conversion/Conversion.cpp
        src/Conversion/ConversionScalar.cpp
        src/Conversion/ConversionNEON.cpp
        src/Conversion/ConversionAVX2.cpp
        src/Acquisition/Radio.cpp
        src/Acquisition/Radio/RadioUSRP.cpp
        src/Acquisition/Radio/RadioHackRF.cpp
        src/Acquisition/File/RadioFichierRAW.cpp
        src/Acquisition/File/RadioFichierUHD.cpp
        src/PPM/Demodulator/PPM_Demodulator.cpp
        src/IQ/Removing/IQ_Removing.cpp
        src/Sampling/Down/DownSampling.cpp
        src/Detecteur/Detecteur.cpp
        src/Detecteur/DetecteurScalar.cpp
        src/Detecteur/Detecteur_NEON.cpp
        src/Detecteur/Detecteur_AVX2.cpp
        src/receiver.cpp
        )

add_executable(adsb_receiver ${SOURCE_FILES})

find_package (UHD)
if    (UHD_FOUND)
    include_directories(${UHD_INCLUDE_DIRS})
    target_link_libraries (adsb_receiver ${UHD_LIBRARIES})
endif (UHD_FOUND)

find_package(Boost COMPONENTS system filesystem REQUIRED)

target_link_libraries(adsb_receiver
        ${Boost_FILESYSTEM_LIBRARY}
        ${Boost_SYSTEM_LIBRARY}
        )







cmake_minimum_required(VERSION 3.5)

project(adsb_emitter)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake/Modules/")
message("${CMAKE_SOURCE_DIR}/cmake/Modules/")

set(CMAKE_CXX_STANDARD 14)

set(CMAKE_CXX_FLAGS "-Wall -Ofast -march=native -mtune=native -I/usr/local/opt/hackrf/include")
#SET(CMAKE_EXE_LINKER_FLAGS "/usr/local/opt/hackrf/lib/libhackrf.a /usr/local/opt/libusb/lib/libusb-1.0.a -framework CoreFoundation -framework IOKit")
SET(CMAKE_EXE_LINKER_FLAGS "-L/usr/local/opt/hackrf/lib -lhackrf")

set(SOURCE_FILES
        src/CRC/CRC32b.cpp
        src/Frame/Frame.cpp
        src/Acquisition/Radio.cpp
        src/Emitter/Radio/RadioHackRF.cpp
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

find_package (UHD)
if    (UHD_FOUND)
    include_directories(${UHD_INCLUDE_DIRS})
    target_link_libraries (adsb_emitter ${UHD_LIBRARIES})
endif (UHD_FOUND)

find_package(Boost COMPONENTS system filesystem REQUIRED)

target_link_libraries(adsb_emitter
        ${Boost_FILESYSTEM_LIBRARY}
        ${Boost_SYSTEM_LIBRARY}
        )

