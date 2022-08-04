#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include "cubic_root.c"
#include "square_root.c"

float fixed_to_float(uint32_t input, int n_bits){
  return ((float)input) / (1 << n_bits);
}

uint32_t float_to_fixed(float input, int n_bits){
  return (uint32_t)(input * (1 << n_bits));
}


int main(void){
  float n = 4;

  uint32_t nf = float_to_fixed(n, 0);
  uint32_t y1 = square_root(nf, 15);

  float y  = fixed_to_float(y1, 15);
  
  
  printf("Square Root of %f\nccm: %f\n", n, y);
  float n3 = 16;

  uint32_t n3f = float_to_fixed(16, 0);
  uint32_t y2 = cubic_root(n3f, 10);
  
  float y3 = fixed_to_float(y2, 10);
  
  printf("\nCubic Root of %f\nCCM: %f\n", n3, y3);
}