#include <SoftwareSerial.h>

SoftwareSerial bluetoothSerial(0, 1); 
const int inputPin = 8;
const int outputPin = 9;
void setup() {
  pinMode(inputPin, INPUT);
  pinMode(outputPin, OUTPUT);
    pinMode(LED_BUILTIN, OUTPUT);
  digitalWrite(outputPin, LOW); // Set pin 8 (output) to LOW by default
  // Serial.begin(9600);
  bluetoothSerial.begin(9600);
}

void loop() {
 // Check if Bluetooth connection is available
  if (bluetoothSerial.available() > 0) {
    char receivedChar = bluetoothSerial.read();
  
    if (receivedChar == 'o' || receivedChar == 'f') {
      digitalWrite(outputPin, receivedChar == 'o' ? HIGH : LOW);
    }
  } else {
    // Bluetooth connection is not available, set pin 9 (output) to LOW
   //digitalWrite(outputPin, LOW);
  }

  // Send a signal from pin 7 (input) to TX
 bluetoothSerial.print(digitalRead(inputPin));
 
 delay(100); // Add a small delay to avoid rapid signal changes
}
