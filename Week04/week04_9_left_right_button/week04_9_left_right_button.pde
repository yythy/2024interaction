//week04_9_left_right_button
void setup() {
  size(600, 500);
  background(0);
  stroke(255);
  fill(0);
}
void draw() {
  //
}
float s = 25;
void mousePressed() {
  ellipse(mouseX, mouseY, s, s);
  if(mouseButton==LEFT) s = s*1.1;
  if(mouseButton==RIGHT) s = s*0.9;
}
