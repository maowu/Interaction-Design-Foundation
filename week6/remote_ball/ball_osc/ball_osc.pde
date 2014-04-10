import oscP5.*;
import netP5.*;
  
OscP5 oscP5;
NetAddress myRemoteLocation;

String HOST = "127.0.0.1";   

float ball_size = 20;

void setup() {
  size(400, 400);
  
  oscP5 = new OscP5(this,54321);
  myRemoteLocation = new NetAddress(HOST,12345);
}


void draw() {
  background(255);
  
  // draw ball form osc control
  fill(40, 200, 160);
  noStroke();
  ellipse(ball_pos.x, ball_pos.y, ball_size, ball_size);
}


void sendOSC(int val) {
  OscMessage myMessage = new OscMessage("/otball");
  myMessage.add(val);
  oscP5.send(myMessage, myRemoteLocation);
}


/* incoming osc message are forwarded to the oscEvent method. */
void oscEvent(OscMessage theOscMessage) {
  if(theOscMessage.checkAddrPattern("/moveball")==true) {
    if(theOscMessage.checkTypetag("ff")) {
      float osc_x = theOscMessage.get(0).floatValue();
      float osc_y = theOscMessage.get(1).floatValue();
      ball_pos.set(osc_x, osc_y);
    }
  } 
}
