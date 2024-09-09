//week01_5_painter_mousePressed_strokeWeight
void setup() {
  size(500, 500);
}

void draw() {
  if (mousePressed) line(mouseX, mouseY, pmouseX, pmouseY);
}

void keyPressed(){
  if(key=='1') strokeWeight(1);
  if(key=='2') strokeWeight(5);
  if(key=='3') strokeWeight(10);
}
