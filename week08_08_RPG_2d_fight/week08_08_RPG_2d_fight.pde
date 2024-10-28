//week08_08_RPG_2d_fight
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
  image(user,16,16);
  textSize(30);
  text("Level:"+level,16,90);
  textSize(20);
  text("HP:"+level,16,140);
  text("ATT:"+level,16,170);
  text("DEF:"+level,16,200);
  text("MAG:"+level,16,230);
  text("EXP:"+level,16,260);
  text("coin:"+level,16,290);
  image(user,userJ*32,userI*32);
  if(gameOver==1) background(0,255,0);
  if(gameOver==2) background(0,255,0);
}
int level = 1,hp = 2000,attack = 14,defense = 10,magic = 12,exp = 36,coin = 74; 
int gameOver = 0;
void mousePressed(){
 int newI = userI,newJ = userJ;
 if(keyCode == RIGHT) userJ++;
 if(keyCode == LEFT) userJ--;
 if(keyCode == DOWN) userI--;
 if(keyCode == UP) userI++;
 if(floor[newI][newJ] == 9){
   if(hp-10<=0) gameOver = 2;
   else{
     hp -= 10;
     coin += 10;
     exp += 20;
     userI = newI;
     userJ = newJ;
     floor[userI][userJ] = 2;
   }
  }
 else if(floor[newI][newJ]!=1 && floor[newI][newJ]!=3){
    userI = newI;
   userJ = newJ;
  if(floor[userI][userJ] ==21) gameOver = 1;
   floor[userI][userJ] = 2;
 }
}
