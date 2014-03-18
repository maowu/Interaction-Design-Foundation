int bg_color = color(0);

void setup() {
  size(400,400);
}


void draw() {
  background(bg_color);
  
  if( (mouseX<width/4) && (mouseX>=0) ) {
    bg_color = color(234,125,125);
  }else if( (mouseX<width/2) && (mouseX>=width/4) ) {
    bg_color = color(120,135,216);
  }else if( (mouseX<width*3/4) && (mouseX>=width/2) ) {
    bg_color = color(120,216,127);
  }else{
    bg_color = color(240,92,225);
  }

  
}
