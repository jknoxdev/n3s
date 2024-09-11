/*
  Play Animation

  Sketch shows animation defined in animation.h

  See the full documentation here:
  https://docs.arduino.cc/tutorials/uno-r4-wifi/led-matrix
*/



#include "Arduino_LED_Matrix.h"   //Include the LED_Matrix library
#include "animation.h"            //Include animation.h header file

// Create an instance of the ArduinoLEDMatrix class
ArduinoLEDMatrix matrix;  

int animode = 3;

void setup() {
  Serial.begin(115200);
   matrix.begin();
  // switch (counter) {
  //   case 0:
  //     matrix.loadSequence(LEDMATRIX_ANIMATION_STARTUP);
  //     break;
  //   case 2:
  //     matrix.loadSequence(LEDMATRIX_BLUETOOTH);
  //     break;
  //   default:
  //     matrix.loadSequence(LEDMATRIX_BOOTLOADER_ON);
  //     break;
  // // }
    //matrix.loadSequence(LEDMATRIX_ANIMATION_STARTUP);
    //matrix.loadSequence(LEDMATRIX_ANIMATION_NOTIFICATION);
    //matrix.loadSequence(LEDMATRIX_ANIMATION_TETRIS_INTRO);
    //matrix.loadSequence(LEDMATRIX_ANIMATION_ATMEGA);
    
  //   matrix.loadSequence(LEDMATRIX_BLUETOOTH);

}

void loop() {
  matrix.play(true);  
  delay(5000);
  Serial.println(millis());
  Serial.println(animode);
  
  if (animode >= 29) {
    animode = 0;
  }
    animode++;

    switch (animode){
		case 0:    matrix.loadSequence(LEDMATRIX_ANIMATION_LED_BLINK_HORIZONTAL);  animode++; break;
		case 1:    matrix.loadSequence(LEDMATRIX_ANIMATION_LED_BLINK_VERTICAL);    animode++; break;
		case 2:    matrix.loadSequence(LEDMATRIX_ANIMATION_NOTIFICATION);          animode++; break;
		case 3:    matrix.loadSequence(LEDMATRIX_ANIMATION_TETRIS_INTRO);          animode++; break;
		case 4:    matrix.loadSequence(LEDMATRIX_ANIMATION_ATMEGA);                animode++; break;
		case 5:    matrix.loadSequence(LEDMATRIX_ANIMATION_STARTUP);               animode++; break;
		case 6:    matrix.loadSequence(LEDMATRIX_ANIMATION_TETRIS_INTRO);          animode++; break;
		case 7:    matrix.loadSequence(LEDMATRIX_ANIMATION_ATMEGA);                animode++; break;
		case 8:    matrix.loadSequence(LEDMATRIX_ANIMATION_LED_BLINK_HORIZONTAL);  animode++; break;
		case 9:    matrix.loadSequence(LEDMATRIX_ANIMATION_LED_BLINK_VERTICAL);    animode++; break;
		case 10:   matrix.loadSequence(LEDMATRIX_ANIMATION_ARROWS_COMPASS);        animode++; break;
		case 11:   matrix.loadSequence(LEDMATRIX_ANIMATION_AUDIO_WAVEFORM);        animode++; break;
		case 12:   matrix.loadSequence(LEDMATRIX_ANIMATION_BATTERY);               animode++; break;
		case 13:   matrix.loadSequence(LEDMATRIX_ANIMATION_BOUNCING_BALL);         animode++; break;
		case 14:   matrix.loadSequence(LEDMATRIX_ANIMATION_BUG	);                 animode++; break;
		case 15:   matrix.loadSequence(LEDMATRIX_ANIMATION_CHECK);                 animode++; break;
		case 16:   matrix.loadSequence(LEDMATRIX_ANIMATION_CLOUD);                 animode++; break;
		case 17:   matrix.loadSequence(LEDMATRIX_ANIMATION_DOWNLOAD);              animode++; break;
		case 18:   matrix.loadSequence(LEDMATRIX_ANIMATION_DVD);                   animode++; break;
		case 19:   matrix.loadSequence(LEDMATRIX_ANIMATION_HEARTBEAT_LINE);        animode++; break;
		case 20:   matrix.loadSequence(LEDMATRIX_ANIMATION_HEARTBEAT);             animode++; break;
		case 21:   matrix.loadSequence(LEDMATRIX_ANIMATION_INFINITY_LOOP_LOADER);  animode++; break;
		case 22:   matrix.loadSequence(LEDMATRIX_ANIMATION_LOAD_CLOCK);            animode++; break;
		case 23:   matrix.loadSequence(LEDMATRIX_ANIMATION_LOAD);                  animode++; break;
		case 24:   matrix.loadSequence(LEDMATRIX_ANIMATION_LOCK);                  animode++; break;
		case 25:   matrix.loadSequence(LEDMATRIX_ANIMATION_NOTIFICATION);          animode++; break;
		case 26:   matrix.loadSequence(LEDMATRIX_ANIMATION_OPENSOURCE);            animode++; break;
		case 27:   matrix.loadSequence(LEDMATRIX_ANIMATION_SPINNING_COIN);         animode++; break;
		case 28:   matrix.loadSequence(LEDMATRIX_ANIMATION_TETRIS);                animode++; break;
		case 29:   matrix.loadSequence(LEDMATRIX_ANIMATION_WIFI_SEARCH);           animode++; break;
		default:  matrix.loadSequence(LEDMATRIX_ANIMATION_STARTUP);                animode++; break;
		}

}
