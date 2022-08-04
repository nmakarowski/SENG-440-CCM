#include <stdio.h>
#include <stdint.h>

volatile uint32_t c;
uint32_t add( uint32_t a, uint32_t b) {
return a + b;
}
uint32_t main( void) {
uint32_t a = 1, b = 2;
c = add( a, b);
printf( "a + b = %i\n", c);
exit( 1);
}