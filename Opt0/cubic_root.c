#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>


uint32_t cubic_root(uint32_t M, int K){ //Cubic root of (M) with K bits of precision
  register uint32_t f =  1 << K;
  register uint32_t f_sqrt_3 =  1 << K;
  register int i;
  register uint32_t u, u_sqrt_3;

  for (i = 0; i < K-1; i++){
    u = f + (f >> i);
    u = u + (u >> i);
    u = u + (u >> i);
    
    u_sqrt_3 = f_sqrt_3 + (f_sqrt_3 >> i);

    if (u <= (M << K)){
      f = u;
      f_sqrt_3 =  u_sqrt_3;
    }
  }
  return f_sqrt_3;
}
