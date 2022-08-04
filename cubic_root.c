#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <math.h>

#define SHIFT_SQRT 15
#define SHIFT_CBRT 10 

uint32_t fixed_multiplication(uint32_t x, uint32_t y, int n_bits){
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
    u =  fixed_multiplication(f, fixed_multiplication(temp, fixed_multiplication(temp, temp, K), K), K);
    u_sqrt_3 = fixed_multiplication(f_sqrt_3, temp, K);
    if (u < M * (1 << K)){
      f = u;
      f_sqrt_3 = u_sqrt_3;
    }
  }
  return f_sqrt_3;
}

int main(int argc, char *argv[]){
  uint32_t n = 16;
  uint32_t y = cubic_root(n, 10);
  }