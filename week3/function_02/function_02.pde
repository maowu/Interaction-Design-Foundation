

void setup() {
  size(400, 400);
  
}

void draw() {
  background(255);
  
  draw_Target(100, 100, 50, 5);
  draw_Target(200, 200, 200, 10);
}

void draw_Target(int x, int y, int size, int num) {
  float grayvalues = 255/num;
  float step = size/num;
  
  for(int i=0; i< num; i++) {
    fill(i*grayvalues);
    noStroke();
    ellipse(x, y, size-i*step, size-i*step);
  }
}

