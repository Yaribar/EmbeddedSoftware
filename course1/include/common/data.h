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
 * @brief 
 *
 *
 * @author Yarib Hernandez
 * @date January 2023
 *
 */
#ifndef __MEMORY_H__
#define __MEMORY_H__

/**
 * @brief 
 *
 *
 * @param 
 * @param 
 *
 * @return 
 */
uint8_t my_itoa(int32_t data, uint8_t * ptr, uint32_t base);

/**
 * @brief 
 *
 *
 * @param 
 * @param 
 *
 * @return 
 */
int32_t my_atoi(uint8_t * ptr, uint8_t digits, uint32_t base);

#endif /* __DATA_H__ */