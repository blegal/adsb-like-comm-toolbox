//!
//! @file 				RingBuff.hpp
//! @author 			Geoffrey Hunter <gbmhunter@gmail.com> (www.mbedded.ninja)
//! @created 			2013-07-30
//! @last-modified		2014-09-26
//! @brief 				Implements the ring buffer.
//! @details
//!						See README.rst in root dir for more info.

#ifndef MRING_BUFF_RING_BUFF_H
#define MRING_BUFF_RING_BUFF_H

#include <cstdint>
#include "Config.hpp"

class RingBuff
{

public:

    //! @brief		Enumeration of different ways to read/write data.
    //! @details	Used with RingBuff::Write() and RingBuff::Read().
    enum class ReadWriteLogic
    {
        ANY,			//!< Reads as much data as there is in buffer, writes what ever data will fit in buffer.
        ALL				//!< Will only read if specified num. of elements present,
        //!< will only write data if there is enough space for all data in buffer.
    };

    //===============================================================================================//
    //=================================== PUBLIC METHOD DECLARATIONS ================================//
    //===============================================================================================//

    //! @brief		Initialises the buffer (incl. malloc()ing memory for buffer), ready for use.
    //! @details	If initialisation fails, IsInitComplete() will return false. This method is used,
    //!				because exceptions are not supported (designed to be compatible with embedded
    //!				microcontrollers)
    //! @param		capacity	The size (in bytes) of the buffer.
    RingBuff(const uint32_t capacity);

    //! @brief		Destructor. Frees memory allocated in constructor.
    ~RingBuff();

    //! @brief		Writes a number of bytes to the ring buffer.
    //! @details	Will return early if there is no more space left in the buffer. Does
    //!				not write over contents. Returns 0 if IsInitComplete()
    //!				is false.
    //! @param		buff		Pointer to data in memory to read from (the stuff that will be
    //!							written to the ring buffer).
    //! @param		numBytes	The maximum number of bytes to write.
    //!	@param		writeLogic	If set to ANY, ring buffer will be written with as much data as possible,
    //!							even if all the data cannot fit. If set to ALL, data will be written
    //!							only if there is enough space for all of it.
    uint32_t Write(const int8_t* buff, uint32_t numBytes, ReadWriteLogic writeLogic);

    //! @brief		Simplified overload of Write(const int8_t* buff, uint32_t numBytes, WriteLogic writeLogic).
    //!	@details	writeLogic set to ALL
    uint32_t Write(const int8_t* buff, uint32_t numBytes);


    //! @brief		Reads and removes up to #numBytes from the ring buffer.
    //! @details	Will read numBytes of data, unless there is not enough data to read, in which case
    //!				returns early.
    //! @returns	Number of bytes read (which could be from 0 to numBytes). Returns 0 if IsInitComplete()
    //!				is false.
    uint32_t Read(int8_t* buff, uint32_t numBytes);


    //! @brief		Clears all data in the ring buffer.
    //! @details	Does not actually 0 data as this is not required, just sets tailPos = headPos.
    void Clear();

    //! @brief		Returns the size (capacity) of the buffer.
    //! 			This is NOT how many bytes are currently in the buffer, see NumElements().
    uint32_t Capacity() const;

    //! @brief		Returns the number of elements currently in the buffer. Capacity() returns the capacity of
    //!				the buffer.
    uint32_t NumElements() const;
    uint32_t NumFreeElements() const;

    //! @brief		Allows the user to quickly check if there is any data in the buffer.
    //! @returns	True is there is 1 or more data elements in the buffer, otherwise false.
    //! @sa			NumElements().
    bool IsData() const;

    //! @brief		Allows the user to quickly check if there is any space in the data to write
    //!				more elements.
    //! @returns	True if there is at least one element available to write to, otherwise false. Returns
    //!				false regardless if buffer initialisation wasn't successful.
    //! @sa			IsData().
    bool IsSpace() const;


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
