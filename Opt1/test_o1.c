#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include "cubic_root_o1.c"
#include "square_root_o1.c"

#define SHIFT_AMOUNT_SQ_ROOT 15
#define SHIFT_MASK_SQ_ROOT ((1 << SHIFT_AMOUNT_SQ_ROOT) - 1)

#define SHIFT_AMOUNT_CB_ROOT 10
#define SHIFT_MASK_CB_ROOT ((1 << SHIFT_AMOUNT_CB_ROOT) - 1)

int main(void){
  uint32_t n;
  printf("Enter Number to calculate square root: ");
  scanf("%d", &n);

  uint32_t y = square_root(n, SHIFT_AMOUNT_SQ_ROOT);

  printf("\nSquare Root of %d\nccm: %d.%d\n", n, (y>>SHIFT_AMOUNT_SQ_ROOT), (y&SHIFT_MASK_SQ_ROOT) * 1000000 / (1 << SHIFT_AMOUNT_SQ_ROOT));


  uint32_t n3;
  printf("Enter Number to calculate Cubic root: ");
  scanf("%d", &n3);

  uint32_t y3 = cubic_root(n3, SHIFT_AMOUNT_CB_ROOT);
  
  printf("\nCubic Root of %d\nccm: %d.%d\n", n3, (y3>>SHIFT_AMOUNT_CB_ROOT), (y3&SHIFT_MASK_CB_ROOT) * 1000000 / (1 << SHIFT_AMOUNT_CB_ROOT));
}