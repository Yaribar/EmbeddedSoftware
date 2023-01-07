/******************************************************************************
 * Copyright (C) 2023 by Yarib Hernandez
 *
 * Redistribution, modification or use of this software in source or binary
 * forms is permitted as long as the files maintain this copyright. Users are 
 * permitted to modify this and use it to learn about the field of embedded
 * software. 
 *
 *****************************************************************************/
/**
 * @file data.h
 * @brief Data manipulation 
 *
 * @author Yarib Hernandez
 * @date January 2023
 *
 */
#include <stdint.h>

#ifndef __DATA_H__
#define __DATA_H__

/**
 * @brief Power of an Int Number 
 *
 * This function takes as input a const int number which is power to the number n
 * returns the signed 32 bits number elevated to n
 * 
 * @param base const in number to be power
 * @param n number
 *
 * @return signed 32bits number 
 */
int32_t powInt(const int base, int n);

/**
 * @brief Integer-to-ASCII base 2,10,16
 *
 * Converts data from standard integer type into and ASCII string
 * The number to convert is a signed 32 bit integer, the function is able to
 * 
 * @param data Number to be converted
 * @param ptr Pointer to pass converted character string
 * @param base Base value to convert data
 *
 * @return Length of the converted data
 */
uint8_t my_itoa(int32_t data, uint8_t * ptr, uint32_t base);

/**
 * @brief ASCII-to-Integer
 * 
 *  Convert data back from an ASCII represented string into an integer type
 *
 * @param ptr Pointer to character string
 * @param digits Number of digits from character string
 * @param base Base number to be conveted
 *
 * @return Converted 32-bit signed integer
 */
int32_t my_atoi(uint8_t * ptr, uint8_t digits, uint32_t base);

#endif /* __DATA_H__ */