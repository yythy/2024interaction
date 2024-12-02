//week13_5_PShape_loadshape_Push
PShape gumdam;
void setup(){
  size(500,500,P3D);
  gumdam = loadShape("Gundam.obj");
}
void draw(){
  background(#BBFF81);
  pushMatrix();
    translate(mouseX,mouseY);
    rotateY(radians(frameCount));
    rotate(radians(180));
    scale(8,8,8);
    shape(gumdam,0,0);
  popMatrix();
}
