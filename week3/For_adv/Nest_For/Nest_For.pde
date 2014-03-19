int shift = 20;
int ball_size = 10;

void setup() {
  size(400, 400);
}

void draw() {
  background(255);
  
  fill(40, 200, 160);
  noStroke();
  for(int x=shift; x<width; x+=shift) {
    for(int y=shift; y<height; y+=shift) {
      ellipse(x, y, ball_size, ball_size);
    } 
  }
}
