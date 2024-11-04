//week09_08_keyboard_ninja_scoreboard
PImage board;
void setup() {
  size(600, 400);
  board = loadImage("board.png");
  randomApple();
}
float appleX = 100, appleY = 500, appleVX = 3, appleVY = -10;
char appleKey;
void randomApple(){
  appleX = random(100,500);
  appleY = 500;
  if(appleX<300) appleVX = random(0,8);
  else appleVX = random(-8,0);
  appleVY = random(-35,-25);
  appleKey = (char)('a'+int(random(26)));
}
int score=0;
void keyPressed(){
  if(key==appleKey){
    score+=100;
  }else{
    score-=200;
  }
}
void draw() {
  background(board);
  text("Score:"+score,400,50);
  fill(255, 0, 0);
  ellipse(appleX, appleY, 80, 80);
  fill(255,255,0);
  textSize(50);
  textAlign(CENTER,CENTER);
  text(appleKey,appleX,appleY);
  appleX += appleVX;
  appleY += appleVY;
  appleVY += 0.98;
  if (appleX >600 || appleX<0 || appleY>550) {
    randomApple();
  }
}
