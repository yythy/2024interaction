//week03_2_void_setup_void_draw_fill_rect
PImage img;
void setup() {
  size(600, 500);
  img  = loadImage("arufa.jpg");
}
void draw(){
 image(img,0,0); 
 noStroke();//無框線
 fill(180,200,255,128);
 rect(mouseX,mouseY,80,55);
}
