//week14_07_mouse_timechange
PImage img1,img2;
void setup() {
  size(500, 500);
  img1 = loadImage("kitty.png");
  img2 = loadImage("cute.png");
  cursor(img1);
}
void draw() {
  background(#FFFFF2);
  if(frameCount%120==0) cursor(img1);
  if(frameCount%120==60) cursor(img2);
}
