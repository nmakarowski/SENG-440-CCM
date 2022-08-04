#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>


uint32_t fixed_multiplication(uint32_t x, uint32_t y, int n_bits){
  uint32_t result = (uint32_t) (((uint64_t) x * (uint64_t) y) >> n_bits);
  return result;
}

uint32_t square_root(uint32_t M, int K){ //Square root of (M) with K bits of precision
  uint32_t f = 1 << K;
  uint32_t f_sqrt = 1 << K;
  uint32_t u, u_sqrt, temp;
  int i;
  for (i = 0; i < K-1; i++){
    temp = ((1.0 / (1 << i)) + 1.0) * (1 << K);
    u = fixed_multiplication(f, fixed_multiplication(temp, temp, K), K);
    u_sqrt = fixed_multiplication(f_sqrt, temp, K);
    if (u <= M * (1 << K)){
      f = u;
      f_sqrt = u_sqrt;
    }
  }
  return f_sqrt;
}
