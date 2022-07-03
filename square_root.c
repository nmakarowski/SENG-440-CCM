#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <math.h>

float square_root(float M, int K){ //Square root of (M) with K bits of precision
  float f = 1.0;
  float f_sqrt = 1.0;
  int i;
  float u, u_sqrt, temp;
  for (i = 0; i < K-1; i++){
    temp = 1.0 / (1 << i); //2 ^ -i
    u = f * (1 + temp) * (1 + temp);
    u_sqrt = f_sqrt * (1 + temp);
    if (u < M){
      f = u;
      f_sqrt = u_sqrt;
    }
  }
  return f_sqrt;
}

float cubic_root(float M, int K){ //Cubic root of (M) with K bits of precision
  float f = 1.0;
  float f_sqrt_3 = 1.0;
  int i;
  float u, u_sqrt_3, temp;
  for (i = 0; i < K-1; i++){
    temp = 1.0 / (1 << i); //2 ^ -i
    u = f * (1 + temp) * (1 + temp) * (1 + temp);
    u_sqrt_3 = f_sqrt_3 * (1 + temp);
    if (u < M){
      f = u;
      f_sqrt_3 = u_sqrt_3;
    }
  }
  return f_sqrt_3;
}

int main(int argc, char *argv[]){
  float n = 16;
  double x = sqrt(n);
  float y = square_root(n, 15);
  
  printf("Square Root of %f\nsqrt function: %f\nCCM: %f\n", n, x, y);

  float n3 = 16;
  double x3 = cbrt(n);
  float y3 = cubic_root(n, 10);
  
  printf("Cubic Root of %f\ncbrt function: %f\nCCM: %f\n", n3, x3, y3);
  }