// brief program that calls an assembly function to play sounds
#include <iostream>
#include <stdio.h>

// link assembly function
extern "C" void PlaySounds(int* notes, int count);

int main() {
    
    // array of sounds! the first argument is frequency
    // and the second is duration
    int clair[] = {
          277, 909,
          311, 909,
          349, 909,
          415, 909,

          466, 1364,
          415, 454,
          349, 909,
          311, 909,
          277, 1818,

          349, 909,
          415, 909,
          554, 909,
          523, 909,

          466, 1364,
          415, 454,
          349, 909
    }; 

    // function call
    PlaySounds(clair, 16);  // 18 pairs total    

    return 0;
}
