void setup() {
  size(400, 400);
}

void draw() {
  background(255);
  fill(#FFDC0F);
  float a = radians(mouseX);
  for (int x=0; x<400; x+=100) {
    for (int y=0; y<400; y+=100) {
      arc(x+50, y+50, 100, 100, 0+0.5, PI*2-a, PIE);
      //x標,y標,寬 , 高,開始,結束  ,派方式畫
    }
  }
}
