//week04_6_world_svg_better_scale
PShape world;
void setup() {
  size(1000, 500);
  world = loadShape("world.svg");
}
float s = 0.5, x=0, y=0;
float realX = 0, realY = 0;
void draw() {
  background(#92C2F5);
  translate(x, y);
  scale(s);
  shape(world);
  ellipse(realX, realY, 10/s, 10/s);
  noStroke();
  fill(255,0,0);
}
void mouseDragged() {
  x +=mouseX-pmouseX;
  y +=mouseY-pmouseY;
}


void mouseWheel(MouseEvent e) {
  realX = (mouseX -x) /s;
  realY = (mouseY -y) /s;
  float oldS = s;
  if (e.getCount()>0) s *= 1.05;
  else s *= 0.95;
  x = x +realX*oldS - realX*s;
  y = y +realY*oldS - realY*s;
}
