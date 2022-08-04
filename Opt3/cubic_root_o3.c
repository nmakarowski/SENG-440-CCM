#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>


#define FIXED_MULT(x, y, n) ((uint32_t) (((uint64_t) x * (uint64_t) y) >> n))

uint32_t cubic_root(uint32_t M, int K){ //Cubic root of (M) with K bits of precision
  register uint32_t f =  1 << K;
  register uint32_t f_sqrt_3 =  1 << K;
  register int i;
  register uint32_t u;
  for (i = 0; i < K-1; i++){
    u = f + (f >> i);
    u = u + (u >> i);
    u = u + (u >> i);
    if (u <= (M << K)){
      f = u;
      f_sqrt_3 =  f_sqrt_3 + (f_sqrt_3 >> i);
    }
  }
  return f_sqrt_3;
}
