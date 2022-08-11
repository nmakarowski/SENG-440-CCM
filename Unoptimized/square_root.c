#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

uint32_t square_root(uint32_t M){ //Square root of (M) with K bits of precision
  uint32_t K = 15;
  uint32_t f =  1 << K;
  uint32_t f_sqrt =  1 << K;
  int i;
  uint32_t u, u_sqrt;

  for (i = 0; i < K-1; i++){
    u =  f + (f >> i);
    u = u + (u >> i);
    u_sqrt = f_sqrt + (f_sqrt >> i);
    if (u <= (M << K)){
      f = u;
      f_sqrt = u_sqrt;
    }
  }
  return f_sqrt;
}
