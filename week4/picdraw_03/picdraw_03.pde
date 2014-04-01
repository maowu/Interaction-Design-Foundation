int nums = 4;
float bigball_size = 30;
float smallball_size = 10;

int sw = 400;
int sh = 400;


void setup() {
  size(sw, sh);
  bigball_size = sw/nums ;
  smallball_size = (dist(bigball_size/2, bigball_size/2, bigball_size, bigball_size)-bigball_size/2) *2;
  
}


void draw() {
  background(255);
  
  fill(40, 200, 160);
  noStroke();
  for(float b_x = bigball_size/2; b_x< width; b_x += bigball_size) {
    for(float b_y = bigball_size/2; b_y< height; b_y += bigball_size) {
      ellipse(b_x, b_y, bigball_size, bigball_size);
    }
  }
  
  fill(240, 140, 140);
  for(float s_x = bigball_size; s_x <width; s_x+= bigball_size) {
    for(float s_y = bigball_size; s_y< height; s_y+= bigball_size) {
      ellipse(s_x, s_y, smallball_size, smallball_size);
    }
  }
  
  
}
