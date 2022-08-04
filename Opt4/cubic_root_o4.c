#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>


uint32_t cubic_root(uint32_t M, int K){ //Cubic root of (M) with K bits of precision
  register uint32_t f =  1 << K;
  register uint32_t f_sqrt_3 =  1 << K;
  register int i;
  register uint32_t u;
  register int temp1, temp2;
  for (i = 0; i < K-1; i++){
    temp1 = f + (f >> i);
    temp2 = temp1 + (temp1 >> i);
    u = temp2 + (temp2 >> i);
    
    if (u <= (M << K)){
      f = u;
      f_sqrt_3 =  f_sqrt_3 + (f_sqrt_3 >> i);
    }
  }
  return f_sqrt_3;
}
