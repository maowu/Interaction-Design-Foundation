PVector Pt1 = new PVector(200, 100);
int Pt1_size = 100;
PVector Pt2 = new PVector(100, 300);
int Pt2_size = 180;
PVector Pt3 = new PVector(300, 300);
int Pt3_size = 150;

void setup() {
  size(400, 400);
  
}

void draw() {
  background(255);
  noFill();
  stroke(50);
  ellipse(Pt1.x, Pt1.y, Pt1_size, Pt1_size);
  ellipse(Pt2.x, Pt2.y, Pt2_size, Pt2_size);
  ellipse(Pt3.x, Pt3.y, Pt3_size, Pt3_size);
  
  triangle(Pt1.x, Pt1.y, Pt2.x, Pt2.y, Pt3.x, Pt3.y);
  
  triangle( (Pt1.x+ Pt2.x)/2, (Pt1.y+Pt2.y)/2 , (Pt1.x+ Pt3.x)/2, (Pt1.y+Pt3.y)/2 , Pt2.x*2/5+ Pt3.x*3/5, Pt2.y*2/5+Pt3.y*3/5 );

}

void keyPressed() {
  if(key=='s') {
    save("goodpic.png");
  }
}


