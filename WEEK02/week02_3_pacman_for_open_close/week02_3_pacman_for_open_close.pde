//week02_3_pacman_for_open_close
void setup() {
  size(400, 400);
}

void draw() {

  background(255);
  fill(#FFDC0F);

  for (int x=0; x<400; x+=100) {
    for (int y=0; y<400; y+=100) {
      float a = frameCount % 180;
      if (a<45) a = radians(a);
      else if (a<90) a = radians(90-a);
      else if (a<135) a = radians(a-90);
      else if (a<180) a = radians(180-a);
      arc(x+50, y+50, 100, 100, 0+0.5, PI*2-a, PIE);
      //x標,y標,寬 , 高,開始,結束  ,派方式畫
    }
  }
}
