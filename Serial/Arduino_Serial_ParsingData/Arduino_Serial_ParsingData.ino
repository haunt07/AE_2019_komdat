void setup() {
  Serial.begin(9600);
  Serial.setTimeout(10);
}

void loop() {
  if(Serial.available()){
    int SData[2];
    delay(100);
    for(int i=0;i<=1;i++){
      SData[i]=Serial.parseInt();
    }
    Serial.print("PWM 1 = ");
    Serial.print(SData[0]);
    Serial.print("\tPWM 2 = ");
    Serial.println(SData[1]);
  }
}
