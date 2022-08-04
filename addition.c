#include <stdio.h>
#include <stdint.h>

volatile uint8_t c;
uint8_t add( uint8_t a, uint8_t b) {
return a + b;
}
int main( void) {
uint8_t a = 1, b = 2;
c = add( a, b);
printf( "a + b = %i\n", c);
exit( 1);
}