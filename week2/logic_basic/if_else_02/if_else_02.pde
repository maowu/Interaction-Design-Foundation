int bg_color = color(255);

void setup() {
  size(400, 400);
}


void draw() {
  background(bg_color);
  
  stroke(100);
  line(0, height/2, width, height/2);
  line(width/2, 0, width/2, height);
  
  if( (mouseX<=width/2) && (mouseY<=height/2) ) {
    bg_color = color(230, 90, 140);
  }else if( (mouseX<width/2) && (mouseY>height/2) ) {
    bg_color = color(100, 150, 200);
  }else if( (mouseX>=width/2) && (mouseY<=height/2) ) {
    bg_color = color(90, 210, 150);
  }else {
    bg_color = color(250, 240, 130);
  }
  
  
}
