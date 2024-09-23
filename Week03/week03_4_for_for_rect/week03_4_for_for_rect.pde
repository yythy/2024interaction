//week03_4_for_for_rect
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

  for (int i=0; i<=4; i++) {
    for (int j=0; j<i; j++) {
      float y = i*50;
      float x = -i/2*70+j*70+((i%2==0)?35:0);
      rect(mouseX+x, mouseY-100+y, 80, 55);
    }
  }
  for (int i=3; i>0; i--) {
    for (int j=0; j<i; j++) {
      float y = (4-i)*50+200;
      float x = -i/2*70+j*70+((i%2==0)?35:0);
      rect(mouseX+x, mouseY-100+y, 80, 55);
    }
  }
}
