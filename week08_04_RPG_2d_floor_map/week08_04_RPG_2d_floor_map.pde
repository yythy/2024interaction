//week08_04_RPG_2d_floor_map
int [][] floor = {
  {4, 1, 1, 1, 5, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 5},
  {4, 1, 1, 1, 5, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 5},
  {4, 1, 1, 1, 5, 4, 1, 19, 3, 22, 3, 22, 9, 2, 2, 2, 9, 2, 16, 5},
  {4, 1, 1, 1, 5, 4, 1, 19, 3, 22, 3, 22, 9, 2, 2, 2, 9, 2, 16, 5},
};
PImage img;
PImage [] fimg = new PImage[40];
void setup()
{
  size(640, 480);
  img = loadImage("640x480.png");
  for(int i=1; i<=22 ; i++) fimg[i] = (i+".png");
}
void draw()
{
  for (int i=0; i<3; i++) {
    for (int j=0; j<20; j++) {
      int now = floor[i][j];
      image(fimg[now],j*32,i*32);
    }
  }
}
