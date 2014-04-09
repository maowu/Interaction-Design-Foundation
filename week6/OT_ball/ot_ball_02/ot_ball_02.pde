import oscP5.*;
import netP5.*;
  
OscP5 oscP5;
NetAddress myRemoteLocation;

String Next_HOST = "127.0.0.1";    // change to next computer's IP;

float x = -50;
float y = 200;
float ball_size = 20;
float xspeed = random(1,3);
float yspeed = random(1,3); 

boolean go_out = false;

void setup() {
  size(400, 400);
  
  oscP5 = new OscP5(this,12345);
  myRemoteLocation = new NetAddress(Next_HOST,54321);
}


void draw() {
  background(255);
  
  // caclurate the location of the ball
  if(go_out==true) {
    x = x + xspeed;
    y = y + yspeed;
  }
  
  if(y>height-ball_size/2 || y< ball_size/2) {
    yspeed *= -1; 
  }
  
  if( x>width+ball_size/2 ) {
    // send message to next computer
    if(go_out == true) {
      sendOSC(1);
      println("go to next computer !!");
      go_out = false;
    }
  }
  
  // draw ball
  fill(40, 200, 160);
  noStroke();
  ellipse(x, y, ball_size, ball_size);
}

void reSetting() {
  x = -50;
  y = 200;
  xspeed = random(1,3);
  yspeed = random(1,3); 
  go_out = true;
}

void sendOSC(int val) {
  OscMessage myMessage = new OscMessage("/otball");
  myMessage.add(val);
  oscP5.send(myMessage, myRemoteLocation);
}

void keyPressed() {
  if(key==' ') {
    reSetting();
  } 
}


/* incoming osc message are forwarded to the oscEvent method. */
void oscEvent(OscMessage theOscMessage) {
  if(theOscMessage.checkAddrPattern("/otball")==true) {
      int val = theOscMessage.get(0).intValue();
      if(val == 1) {    
        reSetting();
      }
  } 
}
