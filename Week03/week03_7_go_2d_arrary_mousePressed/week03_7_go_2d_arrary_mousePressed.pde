//week03_7_go_2d_arrary_mousePressed
int [][] broad = new int [9][9];
void setup() {
  size(450, 450);
}
void draw() {
  background(220, 179, 92);
  strokeWeight(2);
  float c = 0;
  for (int i=0; i<9; i++) {
    line(25, 25+ i*50, 425, 25+i*50);
    line(25+ i*50, 25, 25+i*50, 425);
  }
  for (int i=0; i<9; i++) {
    for (int j=0; j<9; j++) {
      
      if (broad[i][j]==1) ellipse(25+ j*50, 25+ i*50, 40, 40);
    }
  }
  ellipse(mouseX, mouseY, 40, 40);
}
void mousePressed() {
  int i = mouseY/50, j = mouseX/50;
  broad[i][j] = 1;
}
