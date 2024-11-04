//week09_09_keyboard_ninja_startstate
PImage board;
void setup() {
  size(600, 400);
  board = loadImage("board.png");
  randomApple();
}
float appleX = 100, appleY = 500, appleVX = 3, appleVY = -10;
char appleKey;
void randomApple() {
  appleX = random(100, 500);
  appleY = 500;
  if (appleX<300) appleVX = random(0, 8);
  else appleVX = random(-8, 0);
  appleVY = random(-35, -25);
  appleKey = (char)('a'+int(random(26)));
}
int score=0;
int state = 0;
int countdown = 60*4;
void keyPressed() {
  if (state == 0) state = 1;
  if (state == 2) {
    if (key==appleKey) {
      score+=100;
    } else {
      score-=30;
    }
  }
}
void draw() {
  background(board);
  text("Score:"+score, 400, 50);
  fill(255, 0, 0);
  textSize(50);
  textAlign(CENTER, CENTER);
  if (state==0) text("Pressed Any Key to Start", 300, 200);
  else if (state ==1) {
    textSize(100);
    countdown--;
    if (countdown>60*3) text("3", 300, 200);
    else if (countdown>60*2) text("2", 300, 200);
    else if (countdown>60*1) text("1", 300, 200);
    else if (countdown>0) text("GO!", 300, 200);
    else state = 2;
  } else {
    ellipse(appleX, appleY, 80, 80);
    fill(255, 255, 0);
    textSize(50);

    text(appleKey, appleX, appleY);
    appleX += appleVX;
    appleY += appleVY;
    appleVY += 0.98;
    if (appleX >600 || appleX<0 || appleY>550) {
      randomApple();
    }
  }
}
