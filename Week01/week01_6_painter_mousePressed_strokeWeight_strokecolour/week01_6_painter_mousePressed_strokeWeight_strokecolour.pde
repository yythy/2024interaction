//week01_6_painter_mousePressed_strokeWeight_strokecolour
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
  if(key=='4') stroke(0,0,0);
  if(key=='5') stroke(255,0,0);
  if(key=='6') stroke(255,255,0);
  if(key=='8') stroke(0,0,255);
  if(key=='7') stroke(0,255,0);
  if(key=='0') stroke(255,255,255);
  if(key=='9') stroke(255,0,255);
}
