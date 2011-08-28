#include <Servo.h> 

 Servo myservo;  // create servo object to control a servo 

int lightpin = 0;  // analog pin used to connect the photoresistor
int val;    // variable to read the value from the analog pin 
int pos = 0;    // variable to store the servo position
//int threshold = 400;   
//int servoPin = 9; // Control pin for servo motor

void setup() 
{ 
  Serial.begin(9600);
 myservo.attach(9);  // attaches the servo on pin 9 to the servo object 
} 

void loop() 

{ 
  val = analogRead(lightpin);            // reads the value of the photoresistor 
  Serial.println(val);  
  val = map(val, 50, 300, 0, 179);     // scale it to use it with the servo (value between 0 and 180) 
  myservo.write(val);                  // sets the servo position according to the scaled value 
  delay(30);                          // waits for the servo to get there 
 
  //if(analogRead(lightpin) > 900){
   // delay(5000);
 // digitalWrite(myservo.attach(9), LOW);
 // }
  
 //for(pos = 0; pos < 180; pos += 1)  // goes from 0 degrees to 180 degrees 
 // {                                  // in steps of 1 degree 
 //   myservo.write(pos);              // tell servo to go to position in variable 'pos' 
 //   delay(20);                       // waits 15ms for the servo to reach the position 
 // } 
 // for(pos = 180; pos>=1; pos-=1)     // goes from 180 degrees to 0 degrees 
 // {                                
 // myservo.write(pos);              // tell servo to go to position in variable 'pos' 
 //   delay(20);                       // waits 15ms for the servo to reach the position 
  //} 
 
 
 
 
} 

