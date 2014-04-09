import oscP5.*;
import netP5.*;
  
OscP5 oscP5;
NetAddress myRemoteLocation;

int color_01 = color(135, 190, 225);
int color_02 = color(255, 155, 110);
int bg_color = color(100, 100, 100);

void setup() {
  size(400,400);
  frameRate(25);
  /* start oscP5, listening for incoming messages at port 12345 */
  oscP5 = new OscP5(this,12345);
  
}


void draw() {
  background(bg_color);  
}


/* incoming osc message are forwarded to the oscEvent method. */
void oscEvent(OscMessage theOscMessage) {
  if(theOscMessage.checkAddrPattern("/qrcode")==true) {
    /* check if the typetag is the right one. */
    if(theOscMessage.checkTypetag("s")) {
      String osc_qrcode = theOscMessage.get(0).stringValue();
      println("i get "+osc_qrcode);
      if(osc_qrcode.equals("1")) {    // <-- here replace your qrcode message
        bg_color = color_01;
      }
      if(osc_qrcode.equals("2")) {    // <-- here replace your qrcode message
        bg_color = color_02;
      }
      return;
    }  
  } 
}
