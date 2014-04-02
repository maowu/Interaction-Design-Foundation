PImage img;
int smallPoint = 4;
int largePoint = 40;

void setup() {
  img = loadImage("sample.png"); 
  size(img.width, img.height);
  
  smallPoint = 4;
  largePoint = 40;
  noStroke();
  background(255);
}

void draw() { 
  float pointillize = map(mouseX, 0, width, smallPoint, largePoint);
  int x = int(random(img.width));
  int y = int(random(img.height));
  color pix = img.get(x, y);
  fill(pix, 128);
  ellipse(x, y, pointillize, pointillize);
}
