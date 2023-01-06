/******************************************************************************
 * Copyright (C) 2017 by Alex Fosdick - University of Colorado
 *
 * Redistribution, modification or use of this software in source or binary
 * forms is permitted as long as the files maintain this copyright. Users are 
 * permitted to modify this and use it to learn about the field of embedded
 * software. Alex Fosdick and the University of Colorado are not liable for any
 * misuse of this material. 
 *
 *****************************************************************************/
/**
 * @file memory.h
 * @brief Abstraction of memory read and write operations
 *
 * This header file provides an abstraction of reading and
 * writing to memory via function calls. 
 *
 * @author Alex Fosdick
 * @date April 1 2017
 *
 */
#include <stdint.h>
#include "stdlib.h"

#ifndef __MEMORY_H__
#define __MEMORY_H__

/**
 * @brief Sets a value of a data array 
 *
 * Given a pointer to a char data set, this will set a provided
 * index into that data set to the value provided.
 *
 * @param ptr Pointer to data array
 * @param index Index into pointer array to set value
 * @param value value to write the the locaiton
 *
 * @return void.
 */
void set_value(char * ptr, unsigned int index, char value);

/**
 * @brief Clear a value of a data array 
 *
 * Given a pointer to a char data set, this will clear a provided
 * index into that data set to the value zero.
 *
 * @param ptr Pointer to data array
 * @param index Index into pointer array to set value
 *
 * @return void.
 */
void clear_value(char * ptr, unsigned int index);

/**
 * @brief Returns a value of a data array 
 *
 * Given a pointer to a char data set, this will read the provided
 * index into that data set and return the value.
 *
 * @param ptr Pointer to data array
 * @param index Index into pointer array to set value
 *
 * @return Value to be read.
 */
char get_value(char * ptr, unsigned int index);

/**
 * @brief Sets data array elements to a value
 *
 * Given a pointer to a char data set, this will set a number of elements
 * from a provided data array to the given value. The length is determined
 * by the provided size parameter.
 *
 * @param ptr Pointer to data array
 * @param value value to write the the locaiton
 * @param size Number of elements to set to value
 *
 * @return void.
 */
void set_all(char * ptr, char value, unsigned int size);

/**
 * @brief Clears elements in a data array
 *
 * Given a pointer to a char data set, this will set a clear a number
 * of elements given the size provided. Clear means to set to zero. 
 *
 * @param ptr Pointer to data array
 * @param size Number of elements to set to zero
 *
 * @return void.
 */
void clear_all(char * ptr, unsigned int size);

///////////////////////////////// NEW FUNCTIONS
/**
 * @brief This function move the data from souce to destination, handling overlaping
 *
 *
 * @param src Byte pointer source
 * @param dst Byte pointer to destinations
 * @param length Length of bytes to move from the source location to the destination
 *
 * @return Pointer to the destintaion
 */
uint8_t * my_memmove(uint8_t * src, uint8_t * dst, size_t length);

/**
 * @brief Sourced data is copy into destination
 *
 *
 * @param src Byte pointer source
 * @param dst Byte pointer to destination
 * @param length Length of bytes to move from the source location to the destination
 *
 * @return Pointer to destination
 */
uint8_t * my_memcopy(uint8_t * src, uint8_t * dst, size_t length);

/**
 * @brief Set all location of the memory to a given value
 *
 * @param src Byte pointer source
 * @param length Length of bytes from source memory
 * @param value Value to assign to the memory source
 *
 * @return Pointer to the source
 */
uint8_t * my_memset(uint8_t * src, size_t length, uint8_t value);

/**
 * @brief Zero out all the bytes in memory
 *
 * @param src Byte pointer to memory location
 * @param length Length in bytes of the memory
 *
 * @return Pointer to the source
 */
uint8_t * my_memzero(uint8_t * src, size_t length);

/**
 * @brief Reverse the order of all the bytes
 *
 * @param src Pointer to memory location
 * @param length Length in bytes of the memory
 *
 * @return Pointer to the sourcer
 */
uint8_t * my_reverse(uint8_t * src, size_t length);

/**
 * @brief Reserve dynamic memory for the number of words given
 * and return a pointer to memory if successful, or a Null pointer if not Successful
 *
 * @param length Number of words to allocate in dynamic memory
 *
 * @return Pointer to memory o null pointer
 */
int32_t * reserve_words(size_t length);

/**
 * @brief Free a dynamic memory allocation by providing the pointer src to the function
 *
 * @param src Pointer to memory source
 *
 * @return 
 */
void free_words(uint32_t * src);

#endif /* __MEMORY_H__ */
