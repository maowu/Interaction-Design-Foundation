import oscP5.*;
import netP5.*;
  
OscP5 oscP5;
NetAddress myRemoteLocation;

String HOST = "127.0.0.1";    

float ball_size = 20;
PVector ball_pos;

void setup() {
  size(400, 400);
  ball_pos = new PVector(width/2, height/2);
  
  oscP5 = new OscP5(this,12345);
  myRemoteLocation = new NetAddress(HOST,54321);
}


void draw() {
  background(255);
  
  ball_pos.set(mouseX, mouseY);
  sendOSC(mouseX, mouseY);
  
  // draw ball form mouse control
  fill(250, 200, 250);
  noStroke();
  ellipse(ball_pos.x, ball_pos.y, ball_size, ball_size);
}


void sendOSC(float x, float y) {
  OscMessage myMessage = new OscMessage("/moveball");
  myMessage.add(x);
  myMessage.add(y);
  oscP5.send(myMessage, myRemoteLocation);
}


