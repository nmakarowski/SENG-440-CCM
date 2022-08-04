#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

uint32_t square_root(uint32_t M, int K){ //Square root of (M) with K bits of precision
  register uint32_t f =  1 << K;
  register uint32_t f_sqrt =  1 << K;
  register int i;
  register uint32_t u, temp;

  for (i = 0; i < K-1; i++){
    temp =  f + (f << i);
    u = temp + (temp << i);
    if (u <= (M << K)){
      f = u;
      f_sqrt = f_sqrt + (f_sqrt << i);
    }
  }
  return f_sqrt;
}
