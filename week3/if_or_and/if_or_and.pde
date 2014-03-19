 int x = 200;
 int y = 200;
 int ball_size = 20;
 int xspeed = 2;
 int yspeed = 3;

 void setup() {
   size(400, 400);  
 }
 
 void draw() {
   background(255);
   
   fill(255, 0, 0);
   rect(0,0, width/2, height/2);
   
   fill(255, 255, 0);
   rect(width/2,0, width/2, height/2);
   
   fill(255, 0, 255);
   rect(0,height/2, width/2, height/2);
   
   fill(0, 255, 255);
   rect(width/2, height/2, width/2, height/2);
   
   if( ( mouseX>0 && mouseX<width/2 && mouseY>0 && mouseY<height/2 ) || ( mouseX>width/2 && mouseX<width && mouseY>height/2 && mouseY<height) ) {
     fill(255);
     ellipse(mouseX, mouseY, 20, 20);
   }
   
   
 }
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
