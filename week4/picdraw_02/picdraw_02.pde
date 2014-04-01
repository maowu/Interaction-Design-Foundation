

void setup() {
  size(400, 400);
}

void draw() {
  background(255);
  
  fill(255, 100, 50);
  beginShape();
  vertex(0, 0);
  vertex(100, 0);
  vertex(0, 100);
  endShape(CLOSE);
  
  fill(100, 100, 50);
  beginShape();
  vertex(100, 0);
  vertex(250, 0);
  vertex(200, 100);
  endShape(CLOSE);
  
  fill(100, 200, 100);
  beginShape();
  vertex(270, 0);
  vertex(400, 0);
  vertex(270, 160);
  endShape(CLOSE);
  
  fill(100, 50, 50);
  beginShape();
  vertex(0, 100);
  vertex(100, 200);
  vertex(0, 300);
  endShape(CLOSE);
  
  fill(100, 100, 250);
  beginShape();
  vertex(100, 200);
  vertex(200, 100);
  vertex(350, 250);
  vertex(250, 350);
  endShape(CLOSE);
  
  beginShape();
  vertex(0, 400);
  vertex(170, 270);
  vertex(170, 400);
  endShape(CLOSE);
  
  ellipse(343, 340, 111, 111);
}
