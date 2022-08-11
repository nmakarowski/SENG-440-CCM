#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

#define PRECISION_CBRT 10 //Defining Constant
 
uint32_t cubic_root(uint32_t M){ //Cubic root of (M) with K bits of precision
  register uint32_t f =  1 << PRECISION_CBRT;
  register uint32_t f_sqrt_3 =  1 << PRECISION_CBRT;
  register int i;
  register uint32_t u, u_sqrt_3, temp; //Using Temp variable 

  M = (M << PRECISION_CBRT); //Subexpression Elimination

  //Pipelining -- Prologue
  u = (f << 3); //Subexpression Elimination -- f * 8 
  u_sqrt_3 = (f_sqrt_3 << 1);  //Subexpression Elimination -- f_sqrt * 2 

  for (i = 0; i < PRECISION_CBRT-1; i++){
    if (u <= M){
      f_sqrt_3 =  u_sqrt_3; 
      f = u; //Reordering
    }

    temp = f + (f >> i) + ((f + (f >> i)) >> i); //Subexpression Elimination
    u = temp + (temp >> i);
    u_sqrt_3 = f_sqrt_3 + (f_sqrt_3 >> i);
  }

  //Pipeline Prologue
   if (u <= M){
      return u_sqrt_3;
    }
    
  return f_sqrt_3;
}
