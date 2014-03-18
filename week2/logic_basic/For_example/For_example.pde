void setup() {
  size(640, 360);
  
}


void draw() {
  background(0);
  
  for(int i=10; i< width; i+=10) {
    if(i%20 == 0) {
      stroke(255);
      line(i, 80, i, height/2);
    }else {
      stroke(153);
      line(i, 20, i, 180) ;
    }
  }
  
}
