/******************************************************************************
 * Copyright (C) 2013 by Yarib Hernandez
 *
 * Redistribution, modification or use of this software in source or binary
 * forms is permitted as long as the files maintain this copyright. Users are 
 * permitted to modify this and use it to learn about the field of embedded
 * software. 
 *
 *****************************************************************************/
/**
 * @file data.c
 * @brief 
 *
 *
 * @author Yarib Hernandez
 * @date January 2023
 *
 */

#include <stdint.h>
#include "platform.h"
#include "memory.h"

int32_t powInt(const int base, int n){
    int32_t p = base;
    if(n==0){
        return 1;
    }
        
    for (uint8_t i = 1; i < n; i++)
    {
        p *=base;
    }
    return p;
}

uint8_t my_itoa(int32_t data, uint8_t * ptr, uint32_t base){
    char ctemp;
    uint8_t length;
    for (uint8_t i = 0; i < 32; i++)
    {
        if(base == 2){
            ctemp = (char)((data % 2)+48);
            data = data / 2;
        }
        else if(base == 10){
            ctemp = (char)((data % 10)+48);
            data = data / 10;
        }
        else if(base == 16){
            if((data % 16)<10){
                ctemp = (char)((data % 16)+48);
            }else{
                ctemp = (char)((data % 16)+55);
            }
            data = data / 16;
        }
        *(ptr+i) = ctemp;
        
        if(data == 0){
            *(ptr+i+1) = '\0';
            length = i+1;
            break;
        }

    }
    my_reverse(ptr,length);
    return length;
}

int32_t my_atoi(uint8_t * ptr, uint8_t digits, uint32_t base){
    int32_t number = 0;
    
    for (int8_t i = digits-1; i >= 0; i--)
    {   
        //PRINTF("%d",(((int8_t)(*(ptr+(digits-i-1))))-48));
        number += (((int8_t)(*(ptr+(digits-i-1))))-48) * powInt(base,i);
        //PRINTF("i:%d %d\n",i,powInt(base,i));
    }

    return number;
}

