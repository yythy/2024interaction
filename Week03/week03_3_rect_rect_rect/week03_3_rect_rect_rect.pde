//week03_3_rect_rect_rect
PImage img;
void setup() {
  size(600, 500);
  img  = loadImage("arufa.jpg");
}
void draw(){
 image(img,0,0); 
 noCursor();//無游標
 noStroke();//無框線
 fill(180,200,255,128);
 rect(mouseX,mouseY,80,55);//L3
 rect(mouseX-70,mouseY,80,55);
 rect(mouseX+70,mouseY,80,55);
 
 rect(mouseX-35,mouseY+50,80,55);//L4
 rect(mouseX+35,mouseY+50,80,55);
 rect(mouseX-105,mouseY+50,80,55);
 rect(mouseX+105,mouseY+50,80,55);
 
 rect(mouseX-35,mouseY-50,80,55);//L2
 rect(mouseX+35,mouseY-50,80,55);
 
 rect(mouseX,mouseY-100,80,55);//L1
}
