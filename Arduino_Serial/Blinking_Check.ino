void setup() {
  Serial.begin(57600);
  pinMode(13, OUTPUT);
}

void loop() {
  if (Serial.available()) {
    char a = Serial.read();
    Serial.print(a);
    if (a == '1') {
      digitalWrite(13, HIGH);
    } else if (a == '0') {
      digitalWrite(13, LOW);
    }
  }
}
