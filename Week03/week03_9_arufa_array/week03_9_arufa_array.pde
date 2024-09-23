//week03_9_arufa_array
int []broadX = {0, -35, +35, +70, 0, -70, -105, -35, +35, +105, +70, 0, -70, -35, +35, 0};
int []broadY = {-100, -50, -50, 0, 0, 0, +50, +50, +50, +50, 100, 100, 100, 150, 150, 200};
PImage img;
void setup() {
  size(600, 500);
  img  = loadImage("arufa.jpg");
}
void draw() {
  image(img, 0, 0);
  noCursor();//無游標
  noStroke();//無框線
  fill(180, 200, 255, 128);

  for (int i=0; i<16; i++) {
    rect(mouseX+broadX[i],mouseY+broadY[i],80,55);
  }
}
