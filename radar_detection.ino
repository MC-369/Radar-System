#include <Servo.h>
#define TRIG_PIN 9
#define ECHO_PIN 10
#define SERVO_PIN 6
Servo myServo;
void setup() {
  // put your setup code here, to run once:
Serial.begin(115200);
myServo.attach(SERVO_PIN);
pinMode(TRIG_PIN, OUTPUT);
pinMode(ECHO_PIN, INPUT);
}

long getDistance() {
  digitalWrite(TRIG_PIN, LOW);
  delayMicroseconds(2);
  digitalWrite(TRIG_PIN, HIGH);
  delayMicroseconds(10);
  digitalWrite(TRIG_PIN, LOW);

  long duration = pulseIn(ECHO_PIN, HIGH);
  long distance = duration * 0.034/2;
  return distance;
}

void loop() {
  // put your main code here, to run repeatedly:
 for (int angle = 0; angle <= 180; angle += 5) {
        myServo.write(angle);
        delay(200);

        long distance = getDistance();
        Serial.print(angle);
        Serial.print(",");
        Serial.println(distance);

        delay(50);
    }

    for (int angle = 180; angle >= 0; angle -= 5) {
        myServo.write(angle);
        delay(200);

        long distance = getDistance();
        Serial.print(angle);
        Serial.print(",");
        Serial.println(distance);

        delay(50);
    }
}
