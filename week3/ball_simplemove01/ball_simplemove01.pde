float x = 200;
float y = 200;
float ball_size = 20;
float xspeed = 2.5;
float yspeed = 2; 

void setup() {
  size(400, 400);
  
}


void draw() {
  background(255);
  
  // caclurate the location of the ball
  x = x + xspeed;
  y = y + yspeed;
  
  if( x>width ) {
    x = 0; 
  }
  if(y>height) {
    y = 0;
  }
  
  // draw ball
  fill(40, 200, 160);
  noStroke();
  ellipse(x, y, ball_size, ball_size);
}
