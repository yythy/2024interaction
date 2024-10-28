// week08_02_RPG_backgroung
PImage img;
void setup()
{
  size(640, 480);
  img = loadImage("640x480.png");
}
void draw()
{
  background(img);
  for (int i=0; i<15; i++) {
    for (int j=0; j<20; j++) {
      noFill();
      rect(j*32, i*32, 32, 32);
    }
  }
}
