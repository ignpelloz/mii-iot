#include <Servo.h>

int ldrPin = 0;
int sensorValue;
int sensorValueEscalado;

void setup() {
  pinMode(ldrPin, INPUT);
  Serial.begin(9600);  
}

void loop() { 
  while (Serial.available() <= 0){} // Espera a recibir algo por el puerto serie
    if (Serial.read()== 'r') {
      sensorValue = analogRead(ldrPin);
      //sensorValueEscalado = (sensorValue * 100 )/ 1023;
      sensorValueEscalado = sensorValue / 10.23;
      Serial.println(sensorValueEscalado);
    }
  delay(500);
}
