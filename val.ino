#define l1 2
#define l2 3
#define l3 4
#define l4 5
#define t 200
void setup() {
  // put your setup code here, to run once:
  Serial.begin(115200);
  pinMode(l1,OUTPUT);
  pinMode(l2,OUTPUT);
  pinMode(l3,OUTPUT);
  pinMode(l4,OUTPUT);
  digitalWrite(l1,LOW);
  digitalWrite(l2,LOW);
  digitalWrite(l3,LOW);
  digitalWrite(l4,LOW);
}

void loop() {
  if (Serial.available()){
    byte inp=Serial.read();
      if(inp==102)
        sequence();
  }
  // put your main code here, to run repeatedly:

}

void sequence()
{
    digitalWrite(l1,HIGH);
    delay(t);
    digitalWrite(l2,HIGH);
    delay(t);
    digitalWrite(l1,LOW);
    digitalWrite(l3,HIGH);
    delay(t);
    digitalWrite(l2,LOW);
    digitalWrite(l4,HIGH);
    delay(t);
    digitalWrite(l3,LOW);
    delay(t);
    digitalWrite(l4,LOW);
}
