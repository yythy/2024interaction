//week13_6_PShape_drawloop
PShape gumdam;
void setup(){
  size(500,500,P3D);
  gumdam = loadShape("Gundam.obj");
}
void draw(){
  background(#BBFF81);
  drawGundam(mouseX,mouseY);
  for(int x=0;x<=500;x+=125){
    drawGundam(x,300);
  }
}
void drawGundam(int x,int y){
  pushMatrix();
    translate(x,y);
    rotateY(radians(frameCount));
    rotate(radians(180));
    scale(8,8,8);
    shape(gumdam,0,0);
  popMatrix();
}
