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


uint32_t RingBuff::Write(const int8_t *buff, uint32_t numBytes, ReadWriteLogic writeLogic)
{
    //std::cout << "numBytes = '" << numBytes << "' .numElements = '" << this->numElements << "'." << std::endl;

    // Check whether user only wants to write data if all data
    // will fit in buffer
    if(writeLogic == ReadWriteLogic::ALL)
    {
        if(numBytes > (this->capacity - this->numElements))
        {
            // Not enough space in buffer to write all elements,
            // return 0
            //! @debug
            //std::cout << "numBytes '" << numBytes << "' > numElements '" << this->numElements << "'." << std::endl;
            return 0;
        }
    }

    const int8_t * currPos;
    currPos = buff;

    for(uint32_t i = 0; i < numBytes; i++)
    {
        if(this->numElements >= this->capacity)
        {
            // We have run out of space! Return how many bytes
            // we managed to write
            //std::cout << "Run out of space!" << std::endl;
            return i;
        }

        // Write one byte to buffer
        buffMemPtr[this->headPos] = *currPos++;

        //! @debug
        //std::cout << "Element '" << buffMemPtr[this->headPos] << "' written to buff pos '" << this->headPos << "'." << std::endl;

        // Increment the head
        this->headPos++;

        // Increment the number of elements
        this->numElements++;

        // Check for wrap-around
        if(this->headPos == this->capacity)
        {
            headPos = 0;
        }
    }

    // All bytes where written
    return numBytes;
}


uint32_t RingBuff::Write(const int8_t *buff, uint32_t numBytes)
{
    // Simplified overload of Write(const int8_t *buff, uint32_t numBytes, ReadWriteLogic writeLogic),
    // default behaviour is to only write to buffer if all elements will fit
    return this->Write(buff, numBytes, ReadWriteLogic::ALL);
}


uint32_t RingBuff::Read(int8_t *buff, uint32_t numBytes)
{
    int8_t * currPos = buff;

    for(uint32_t i = 0; i < numBytes; i++)
    {
        //
        // Check if any data is available
        if(this->numElements == 0)
        {
            // No more data available, return the number of elements
            // we managed to read
            return i;
        }

        // Read one byte from the FIFO buffer
        *currPos++ = this->buffMemPtr[this->tailPos];

        // Decrement the number of elements
        this->numElements--;

        // Increment the tail
        this->tailPos++;

        // Check for wrap-around
        if(this->tailPos == this->capacity)
        {
            // Reset tail
            this->tailPos = 0;
        }
    }

    // All bytes were read
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


bool RingBuff::IsData() const
{
    return (this->numElements > 0);
}


bool RingBuff::IsSpace() const
{
    if(this->numElements < this->capacity)
        // There is at least one element free in buffer
        return true;
    else
        // There are no elements free in buffer
        return false;

}
