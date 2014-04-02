/**
 * Snow  
 * by Mao Wu. 
 *
 * Simple example for webcam interaction. 
 */


import processing.video.*;

Capture video;

int sel_color = color(255,255,255);
int colorX = 0; // X-coordinate of the brightest video pixel
int colorY = 0; // Y-coordinate of the brightest video pixel

int NUMS = 100;
PVector[] snowballs = new PVector[NUMS];
int fall_shift = 2;
int snowball_size = 10;

int threshold = 50;

void setup() {
  size(640, 480);
  // Uses the default video input, see the reference if this causes an error
  video = new Capture(this, width, height);
  video.start();  
  
  for(int i=0; i<NUMS; i++) {
    snowballs[i] = new PVector( int( random(width-10) )  , int( random(height-10) ) );
  }
  noStroke();
  fill(255);
}

void draw() {
  if (video.available()) {
    video.read();
    image(video, 0, 0, width, height); // Draw the webcam video onto the screen
    
    
    video.loadPixels();

    for(int i=0; i<NUMS; i++) {
      
      ellipse(snowballs[i].x, snowballs[i].y, snowball_size, snowball_size);
      
      int tmp_index = int(snowballs[i].x + snowballs[i].y*width);
      println(snowballs[i].x + "," + snowballs[i].y + "=" +tmp_index);
      if(brightness(video.pixels[tmp_index]) < threshold) {    // dark part
        // stop
      }else {                                                  // white part
        snowballs[i].y = snowballs[i].y + fall_shift;
      }
      if(snowballs[i].y >= height) {
        snowballs[i].y = 0;
      }
    }
   
  }
}




