#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

#define FIXED_MULT(x, y, n) ((uint32_t) (((uint64_t) x * (uint64_t) y) >> n))

uint32_t square_root(uint32_t M, int K){ //Square root of (M) with K bits of precision
  register uint32_t f =  1 << K;
  register uint32_t f_sqrt =  1 << K;
  int i;
  register uint32_t u, u_sqrt, temp;
  for (i = 0; i < K-1; i++){
    temp = (1 << (K- i)) + (1 << K);//2 ^ -i + 1
    u = FIXED_MULT(f, FIXED_MULT(temp, temp, K), K);
    u_sqrt = FIXED_MULT(f_sqrt, temp, K);
    if (u <= (M << K)){
      f = u;
      f_sqrt = u_sqrt;
    }
  }
  return f_sqrt;
}
