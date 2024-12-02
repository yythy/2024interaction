//week13_3_animated_background_moving
PImage img;
void setup(){
  size(500,300);
  img = loadImage("turkey.png");
  imageMode(CENTER);
}
void turkey(int x,int y){
  pushMatrix();
    translate(x,y);
    rotate(radians(frameCount));
    image(img,0,0);
  popMatrix();
}
void draw(){
  background(255, 255, 200);
  turkey(mouseX,mouseY);
  turkey(100,100);
  turkey(300,300);
}
