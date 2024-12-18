//week08_07_RPG_2d_eat
int [][] floor = {
  {4, 1, 1, 1, 5, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 5},
  {4, 1, 1, 1, 5, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 5},
  {4, 1, 1, 1, 5, 4, 1, 19, 3, 22, 3, 22, 9, 2, 2, 2, 9, 2, 16, 5},
  {4, 1, 1, 1, 5, 4, 1, 19, 3, 22, 3, 22, 9, 2, 2, 2, 9, 2, 16, 5},
  {4, 1, 1, 1, 5, 4, 1, 2, 3,18, 3, 9, 9, 9, 2, 2, 2, 9, 1, 5},
  {4, 1, 1, 1, 5, 4, 1, 2, 3,18, 3, 9, 9, 9, 2, 2, 2, 9, 1, 5},
  {4, 1, 1, 1, 5, 4, 1, 2, 3,18, 3, 9, 9, 9, 2, 2, 2, 9, 1, 5},
  {4, 1, 1, 1, 5, 4, 1, 2, 3,18, 3, 9, 9, 9, 2, 2, 2, 9, 1, 5},
};
PImage img,user;
PImage [] fimg = new PImage[40];
void setup()
{
  size(640, 480);
  img = loadImage("640x480.png");
  user = loadImage("15.png");
  for(int i=1; i<=22 ; i++) fimg[i] = (i+".png");
}
int userI = 12,userJ = 15;
void draw()
{
  for (int i=0; i<3; i++) {
    for (int j=0; j<20; j++) {
      int now = floor[i][j];
      image(fimg[now],j*32,i*32);
    }
  }
  image(user,userJ*32,userI*32);
  if(gameOver) background(0,255,0);
}
boolean gameOver = false;
void mousePressed(){
 int newI = userI,newJ = userJ;
 if(keyCode == RIGHT) userJ++;
 if(keyCode == LEFT) userJ--;
 if(keyCode == DOWN) userI--;
 if(keyCode == UP) userI++;
 if(floor[newI][newJ]!=1 && floor[newI][newJ]!=3){
    userI = newI;
   userJ = newJ;
   if(floor[userI][userJ] ==21) gameOver = true;
   floor[userI][userJ] = 2;
 }
}
