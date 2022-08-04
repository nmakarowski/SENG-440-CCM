#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

#define FIXED_MULT(x, y, n) ((uint32_t) (((uint64_t) x * (uint64_t) y) >> n))

uint32_t square_root(uint32_t M, int K){ //Square root of (M) with K bits of precision
  register uint32_t f =  1 << K;
  register uint32_t f_sqrt =  1 << K;
  int i;
  register uint32_t u, temp;

  //Pipelineing
  temp = (1 << K) + (1 << K);//2 ^ -i + 1
  for (i = 1; i < K; i++){
    u =  FIXED_MULT(temp, temp, K);
    u = FIXED_MULT(u, f, K);
    if (u <= (M << K)){
      f = u;
      f_sqrt = FIXED_MULT(f_sqrt, temp, K);
    }
    temp = (1 << (K-i)) + (1 << K);
  }
  return f_sqrt;
}
