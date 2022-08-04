#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>


uint32_t fixed_mult(uint32_t x, uint32_t y, int n_bits){
  uint32_t result = (uint32_t) (((uint64_t) x * (uint64_t) y) >> n_bits);
  return result;
}

uint32_t cubic_root(uint32_t M, int K){ //Cubic root of (M) with K bits of precision
  uint32_t f =  1 << K;
  uint32_t f_sqrt_3 =  1 << K;
  int i;
  uint32_t u, u_sqrt_3, temp;
  for (i = 0; i < K-1; i++){
    temp =((1.0 / (1 << i)) + 1.0) * (1 << K); //2 ^ -i + 1
    u =  fixed_mult(f, fixed_mult(temp, fixed_mult(temp, temp, K), K), K);
    u_sqrt_3 = fixed_mult(f_sqrt_3, temp, K);
    if (u < M * (1 << K)){
      f = u;
      f_sqrt_3 = u_sqrt_3;
    }
  }
  return f_sqrt_3;
}
