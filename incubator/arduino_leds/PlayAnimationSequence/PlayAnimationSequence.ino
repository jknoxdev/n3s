/*
  Play Animation

  Sketch shows animation defined in animation.h

  See the full documentation here:
  https://docs.arduino.cc/tutorials/uno-r4-widddfi/led-matrix
*/

#include "Arduino_LED_Matrix.h"  //Include the LED_Matrix library
#include "animation.h"           //Include animation.h header file

// Create an instance of the ArduinoLEDMatrix class
ArduinoLEDMatrix matrix;

char *sequences[] = {
  "LEDMATRIX_ANIMATION_STARTUP",
  "LEDMATRIX_ANIMATION_TETRIS_INTRO",
  "LEDMATRIX_ANIMATION_ATMEGA",
  "LEDMATRIX_ANIMATION_LED_BLINK_HORIZONTAL",
  "LEDMATRIX_ANIMATION_LED_BLINK_VERTICAL",
  "LEDMATRIX_ANIMATION_ARROWS_COMPASS",
  "LEDMATRIX_ANIMATION_AUDIO_WAVEFORM",
  "LEDMATRIX_ANIMATION_BATTERY",
  "LEDMATRIX_ANIMATION_BOUNCING_BALL",
  "LEDMATRIX_ANIMATION_BUG",
  "LEDMATRIX_ANIMATION_CHECK",
  "LEDMATRIX_ANIMATION_CLOUD",
  "LEDMATRIX_ANIMATION_DOWNLOAD",
  "LEDMATRIX_ANIMATION_DVD",
  "LEDMATRIX_ANIMATION_HEARTBEAT_LINE",
  "LEDMATRIX_ANIMATION_HEARTBEAT",
  "LEDMATRIX_ANIMATION_INFINITY_LOOP_LOADER",
  "LEDMATRIX_ANIMATION_LOAD_CLOCK",
  "LEDMATRIX_ANIMATION_LOAD",
  "LEDMATRIX_ANIMATION_LOCK",
  "LEDMATRIX_ANIMATION_NOTIFICATION",
  "LEDMATRIX_ANIMATION_OPENSOURCE",
  "LEDMATRIX_ANIMATION_SPINNING_COIN",
  "LEDMATRIX_ANIMATION_TETRIS",
  "LEDMATRIX_ANIMATION_WIFI_SEARCH"
};

//int i = 0;  // Index to keep track of the current sequence
char seq

void setup() {
  Serial.begin(115200);

  // Load the first animation sequence
  //Serial.println(sequences[i]);
  seqName = sequences[9];
  matrix.loadSequence(seqName);
  //matrix.loadSequence(LEDMATRIX_ANIMATION_WIFI_SEARCH);

  matrix.begin();
  matrix.play(true);
}

void loop() {
  delay(500);
  Serial.println(millis());

  // Check if the current sequence is done
  //if (matrix.sequenceDone()) {
  // Load the next sequence
  //  loadNext();
  //}
}

// Function to load the next sequence
// void loadNext() {
//   // Load the next sequence
//  // matrix.loadSequence(sequences[i]);
//   //matrix.begin();
//   //matrix.play(true);

//   // Move to the next sequence index
//   //i++;
//   // Wrap around to the beginning if necessary
//  // if (i >= sequences.length()) {
//   //  i = 0;
//  //}
//   //setup();
// }
