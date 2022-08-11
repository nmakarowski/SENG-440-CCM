#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

#define PRECISION_SQRT 15 //Defining Constant

uint32_t square_root(uint32_t M){ //Square root of (M) with K bits of precision
  register uint32_t f =  1 << PRECISION_SQRT;
  register uint32_t f_sqrt =  1 << PRECISION_SQRT;
  register int i;
  register uint32_t u, u_sqrt;

  M = (M << PRECISION_SQRT); //Subexpression Elimination

  //Pipelineing -- Prologue
  u = (f << 2); // u = f * 4 (i = 0)
  u_sqrt = (f_sqrt << 1); //u_sqrt = f_sqrt * 2 (i = 0)
  for (i = 0; i < PRECISION_SQRT-1; i++){
  
   if(u <= M){
    f_sqrt = u_sqrt;
    f = u; // Reordering
   }

    //Subexpression Elimination
    u =  f + (f >> i) + ((f + (f >> i))>> i);
    u_sqrt = f_sqrt + (f_sqrt >> i);
  }
  //Loop Epilogue
  if(u <= M){
    return (u_sqrt);
  }  
  return f_sqrt;

}
