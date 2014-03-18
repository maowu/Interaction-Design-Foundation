int bg_color = color(0);

void setup() {
  size(400,400);
}


void draw() {
  background(bg_color);
  
  if( mouseX<width/2 ) {
    bg_color = color(234,125,125);
  }else{
    bg_color = color(240,92,225);
  }

  
}
