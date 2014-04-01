/**
 * Color Tracking 
 * by Mao Wu. 
 *
 * Tracks the seleced color pixel in a live video signal. 
 */


import processing.video.*;

Capture video;

int sel_color = color(255,255,255);
int colorX = 0; // X-coordinate of the brightest video pixel
int colorY = 0; // Y-coordinate of the brightest video pixel

void setup() {
  size(640, 480);
  // Uses the default video input, see the reference if this causes an error
  video = new Capture(this, width, height);
  video.start();  
  noStroke();
  smooth();
}

void draw() {
  if (video.available()) {
    video.read();
    image(video, 0, 0, width, height); // Draw the webcam video onto the screen
    
    
    video.loadPixels();
    int index = 0;
    for (int y = 0; y < video.height; y++) {
      for (int x = 0; x < video.width; x++) {
        
        int pixelValue = video.pixels[index];
        // Determine the brightness of the pixel
        if(pixelValue == sel_color) {
          colorY = y;
          colorX = x;
        }
        index++;
      }
    }
    // Draw a large, yellow circle at the brightest pixel
    fill(255, 204, 0, 128);
    ellipse(colorX, colorY, 200, 200);
  }
}

void mousePressed() {
  sel_color = get(mouseX, mouseY);
  println("selected color: ("+red(sel_color)+", "+green(sel_color)+", "+blue(sel_color)+")");
}
