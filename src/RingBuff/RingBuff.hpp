//!
//! @file 				RingBuff.hpp
//! @author 			Geoffrey Hunter <gbmhunter@gmail.com> (www.mbedded.ninja)
//! @created 			2013-07-30
//! @last-modified		2014-09-26
//! @brief 				Implements the ring buffer.
//! @details
//!						I upgraded the engine to make it fast :-)
//!						Bertrand LE GAL (2021)
#ifndef MRING_BUFF_RING_BUFF_H
#define MRING_BUFF_RING_BUFF_H

#include <cstdint> 

class RingBuff
{
public:

    RingBuff(const uint32_t capacity);

    ~RingBuff();

    uint32_t Write(const int8_t* buff, uint32_t numBytes);

    uint32_t Read(int8_t* buff, uint32_t numBytes);

    void Clear();

    uint32_t Capacity() const;

    uint32_t NumElements() const;
    uint32_t NumFreeElements() const;

private:
    //! @brief		Pointer to buffer. Memory allocated in constructor.
    int8_t* buffMemPtr;

    //! @brief		The size of the buffer (in bytes). Set by Buffer().
    uint32_t capacity;

    //! @brief		The head position, measured in bytes from the start of the buffer (bufPtr).
    //! @details	This is the next element to write to.
    uint32_t headPos;

    //! @brief		The tail position, measured in bytes from the start of the buffer (bufPtr).
    //! @details	This is the next element to read from.
    uint32_t tailPos;

    //! @brief		Keeps track of the number of elements in the memory buffer.
    //! @details	Incremented by 1 for every element written to the buffer, decremented
    //!				by 1 for every element read from the buffer.
    uint32_t numElements;

};

#endif
