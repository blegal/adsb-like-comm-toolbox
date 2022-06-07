//!
//! @file 				RingBuff.cpp
//! @author 			Geoffrey Hunter <gbmhunter@gmail.com> (www.mbedded.ninja)
//! @created 			2013-07-30
//! @last-modified		2014-09-26
//! @brief 				Implements the ring buffer.
//! @details
//!						See README.rst in root dir for more info.
#include <cstdint>
#include <cstdlib>

//===== USER SOURCE =====//
#include "./Config.hpp"
#include "./RingBuff.hpp"


//===============================================================================================//
//================================ PUBLIC METHOD DECLARATIONS ===================================//
//===============================================================================================//

RingBuff::RingBuff(const uint32_t capacity):
        capacity(capacity),
        headPos(0),
        tailPos(0),
        numElements(0)
{
    // Create space for buffer, also 0 buffer (although
    // not strictly needed)
    this->buffMemPtr = new int8_t[capacity];
}


RingBuff::~RingBuff()
{
    // Free memory allocated in constructor
    delete[] this->buffMemPtr;
}


uint32_t RingBuff::Write(const int8_t *buff, uint32_t numBytes)
{
    //
    //  Nombre de données que l'on peut copier directement (memcpy)
    //
    const int32_t direct_space = capacity - headPos;
    if( numBytes <= direct_space )
    {
        int8_t* ptr = this->buffMemPtr + headPos;
        for(int32_t i = 0; i < numBytes; i += 1)
            ptr[i] = buff[i];
        headPos += numBytes;
    }
    else
    {
        int8_t* ptr_1 = this->buffMemPtr + headPos;
        for(int32_t i = 0; i < direct_space; i += 1)
            ptr_1[i] = buff[i];

        int8_t* ptr_2 = this->buffMemPtr;
        for(int32_t i = 0; i < (numBytes-direct_space); i += 1)
            ptr_2[i] = buff[i+direct_space];

        headPos = (headPos + numBytes) % capacity;
    }

    numElements += numBytes;

    return numBytes;
}


uint32_t RingBuff::Read(int8_t *buff, uint32_t numBytes)
{
    //
    //  Nombre de données que l'on peut copier directement (memcpy)
    //
    const int32_t direct_space = capacity - tailPos;
    if( numBytes <= direct_space )
    {
        const int8_t* ptr = this->buffMemPtr + tailPos;
        for(int32_t i = 0; i < numBytes; i += 1)
            buff[i] = ptr[i];
        tailPos += numBytes;
    }
    else
    {
        const int8_t* ptr_1 = this->buffMemPtr + tailPos;
        for(int32_t i = 0; i < direct_space; i += 1)
            buff[i] = ptr_1[i];

        const int8_t* ptr_2 = this->buffMemPtr;
        for(int32_t i = 0; i < (numBytes-direct_space); i += 1)
            buff[i+direct_space] = ptr_2[i];

        tailPos = (tailPos + numBytes) % capacity;
    }

    numElements -= numBytes;

    return numBytes;
}


void RingBuff::Clear()
{
    // Does not 0 data, as this does not matter,
    // Just resets tail, head and number of elements
    this->tailPos     = 0;
    this->headPos     = 0;
    this->numElements = 0;
}


uint32_t RingBuff::Capacity() const
{
    // Just return the saved size of the buffer
    return this->capacity;
}


uint32_t RingBuff::NumFreeElements() const
{
    return this->capacity - this->numElements;
}


uint32_t RingBuff::NumElements() const
{
    return this->numElements;
}
