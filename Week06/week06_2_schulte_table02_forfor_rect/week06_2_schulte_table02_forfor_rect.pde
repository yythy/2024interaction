//week06_2_schulte_table02_forfor_rect
void setup() {
  size(500, 500);
}
void draw() {
  background(#FFFFF2);
  textSize(50);
  textAlign(CENTER, CENTER);
  for (int i=0; i<5; i++) {
    for (int j=0; j<5; j++) {
      fill(255);
      rect(j*100, i*100, 100, 100);
      fill(0);
      text("1", 50+j*100, 50+i*100);
    }
  }
}
