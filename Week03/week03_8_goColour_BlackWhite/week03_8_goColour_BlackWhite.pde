//week03_8_goColour_BlackWhite
int goColour = -1;
int [][] broad = new int [9][9];
void setup() {
  size(450, 450);
}
void draw() {
  background(220, 179, 92);
  strokeWeight(2);
  for (int i=0; i<9; i++) {
    line(25, 25+ i*50, 425, 25+i*50);
    line(25+ i*50, 25, 25+i*50, 425);
  }
  for (int i=0; i<9; i++) {
    for (int j=0; j<9; j++) {
      
      if (broad[i][j]==1) ellipse(25+ j*50, 25+ i*50, 40, 40);
    }
  }
  if(goColour == -1) fill(0);
  else fill(230);
  ellipse(mouseX, mouseY, 40, 40);
}
void mousePressed() {
  int i = mouseY/50, j = mouseX/50;
  broad[i][j] = goColour;
  goColor = goColour*-1;
}
