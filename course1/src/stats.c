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
 * @brief Statistics calculator
 * 
 * A simple C-Programming that exhibits a handful of basic c-programming
 * features to show how to calculate some statistics on a set of numbers:
 *    -median
 *    -mean
 *    -Maximum
 *    -Minimum
 * 
 * @author Yarib Hernandez
 * @date 2022
 *
 */


#include <stdio.h>
#include "stats.h"

/* Size of the Data Set */
#define SIZE (40)

/*void main() {

  unsigned char test[SIZE] = { 34, 201, 190, 154,   8, 194,   2,   6,
                              114, 88,   45,  76, 123,  87,  25,  23,
                              200, 122, 150, 90,   92,  87, 177, 244,
                              201,   6,  12,  60,   8,   2,   5,  67,
                                7,  87, 250, 230,  99,   3, 100,  90};

  print_array(test,sizeof(test)/sizeof(test[0]));
  print_statistics(test,sizeof(test)/sizeof(test[0]));

}*/

void print_statistics(unsigned char data[],size_t length){ 
  unsigned char median = find_median(data,length);
  unsigned char mean = find_mean(data,length);
  unsigned char maximum = find_maximum(data,length);
  unsigned char minimum = find_minimum(data,length);
  printf("Minimum: %d\tMaximum: %d\tMean: %d\tMedian: %d\n",minimum,maximum,mean,median);
}

void print_array(unsigned char data[],size_t length){
#ifdef VERBOSE
  for (int i = 0;i<length;i++){
    PRINTF("%d\n",data[i]);
  }
#endif
}

unsigned char find_median(unsigned char data[],size_t length){
  sort_array(data,length);
  if(length%2){
    return data[(length/2)+1];
  }
  else{
    return (data[(length/2)+1]+data[(length/2)])/2;
  }

}

unsigned char find_mean(unsigned char data[],size_t length){
  unsigned char mean = 0;
  for (int i = 0; i < length; i++)
  {
    mean = ((mean*i)/(1+i))+(data[i]/(1+i));
  }
  return mean;
  
}

unsigned char find_minimum(unsigned char data[],size_t length){
  unsigned char minimum = data[0];
  for (int i = 0; i < length; i++)
  {
    if(data[i] < minimum){
      minimum = data[i];
    }
  }
  return minimum;
  
}

unsigned char find_maximum(unsigned char data[],size_t length){
  unsigned char maximum = data[0];
  for (int i = 0; i < length; i++)
  {
    if(data[i] > maximum){
      maximum = data[i];
    }
  }
  return maximum;
}

void sort_array(unsigned char data[],size_t length){
  unsigned char sorted_array[length];
  unsigned char minimum = data[0];
  int index = 0;

  for (int j = 0; j < length; j++)
  {
    for (int i = 0; i < length-j; i++)
    {
      if(data[i] < minimum)
      {
        
        index = i;
        minimum = data[i];
      }
    }
    sorted_array[j] = data[index];
    for (int i = 0; i < length-(j+1); i++)
    {
      data[i]=data[(i>=index)? i+1 : i];
    }
    minimum = data[0];
    index=0;
  }

  for (int i = 0; i < length; i++)
  {
    data[i] = sorted_array[length-i];
  }
  
  
}
