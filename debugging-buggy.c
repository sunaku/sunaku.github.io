#include <stdlib.h>

/* leaks the given number of bytes */
void leakMemory( int howManyBytes ) {
  malloc( howManyBytes * sizeof( char ) );
}

/* causes a segmentation fault */
int segFault() {
  int* p = ( int* ) 0x1F;
  return *p;
}

/* leaks memory and crashes */
int main( int argc, char** argv ) {
  leakMemory( 33 );
  segFault();
  return 0;
}
