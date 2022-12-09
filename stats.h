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
 * @file stats.c 
 * @brief 
 *
 * Declaration of funtions that are used to calculate some statistics on a set of numbers
 *
 * @author Yarib Hernandez
 * @date 2022
 *
 */
#ifndef __STATS_H__
#define __STATS_H__

/* Declarations and Function Comments here */ 

/**
 * @brief Prints the statistics of an array including minimum, maximum, mean, and median
 *
 * This function use a unsigned char array that is passed to the fucntions find_median()
 * find_mean(), find_maximum(), find_minimum() as parameter. The resulting values are fomatted
 * into the printf() funtion to print the values as follows: minimum, maximum, mean, median.
 *
 */

void print_statistics(unsigned char data[],size_t length); 

/**
 * @brief Prints the array to screen
 *
 * This function takes as inputs a unsigned char array and its length of type size_t.
 * The values of the array are iterated with a for loop, in each iteration the value
 * is printed with a line break.
 *
 * @param data The array with the values to be printed
 * @param length The length size of the array
 *
 */

void print_array(unsigned char data[],size_t length);

/**
 * @brief Returns median value
 *
 * This function takes as inputs a unsigned char array and its lenght of type size_t.
 * The data from the array is ordered to obtained the median value.
 *
 * @param data The array with the values to be used
 * @param length The length size of the array
 *
 * @return Unsigned char value median
 */


unsigned char find_median(unsigned char data[],size_t length);

/**
 * @brief Returns mean value
 *
 * This function takes as inputs a unsigned char array and its length of type sezo_t
 * The values from the array are sumed up into a variable and then divided by the length 
 * size of the array to obtained the unsigned char mean value.
 *
 * @param data The array with the values to be used
 * @param length The length size of the array
 *
 * @return Usigned char value mean
 */

unsigned char find_mean(unsigned char data[],size_t length);

/**
 * @brief Returns minimum value
 *
 * This function takes as inputs a unsigned char array and its length of type size_t.
 * The array values are compared with each other to find which is the minimum value.
 *
 * @param data The array with the values to be used
 * @param length The lenth sie of the array
 *
 * @return Unsigned char value minimum
 */

unsigned char find_minimum(unsigned char data[],size_t length);

/**
 * @brief Returns maximum value
 *
 * This function takes as inputs a unsigned char array and its length of type size_t.
 * The array values are compared with each other to find which is the maximum value.
 *
 * @param data The array with the values to be used
 * @param length The length size of the array
 *
 * @return Unsigned char value maximum
 */

unsigned char find_maximum(unsigned char data[],size_t length);

/**
 * @brief //Sorts the array from largest to smallest. 
 *
 * This function takes as inputs a unsigned char array and its length of type size_t.
 * The values ares sorted in a form that the zeroth element is the largest and the 
 * last element the smallest value 
 *
 * @param data The array with the values to be used
 * @param length The length size of the array
 *
 */

void sort_array(unsigned char data[],size_t length);

#endif /* __STATS_H__ */
