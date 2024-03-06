extern "C"{

#include "Code_Trafficlights.h"
#include <math.h>
#include "rtwtypes.h"
#include <stddef.h>
#define NumBitsPerChar
}


void setup() {
  pinMode(7,OUTPUT);
  pinMode(4,OUTPUT);
  pinMode(2,OUTPUT);
}

void loop() {
  Code_Trafficlights_step();
  digitalWrite(7,rtY.ledred);
  digitalWrite(4,rtY.ledyellow);
  digitalWrite(2,rtY.ledgreen);
  delay(1);
}
  
  

