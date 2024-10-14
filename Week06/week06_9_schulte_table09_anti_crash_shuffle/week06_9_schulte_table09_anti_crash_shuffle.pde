//week06_9_schulte_table09_anti_crash_shuffle
int [][] table = new int[5][5];
void setup() {
  size(500, 600);
  textSize(50);
  textAlign(CENTER, CENTER);
  int [] numbers = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25};  for (int i = numbers.length - 1; i>0; i--) {
    int j = int(random(i+1));
    int temp = numbers[i];
    numbers[i] = numbers[j];
    numbers[j] = temp;
  }
  int index=0;
  for (int i=0; i<5; i++) {
    for (int j=0; j<5; j++) {
      table[i][j] = numbers[index++];
    }
  }
  startT = millis();
}
int startT = 0;
int [][] pressed = new int[5][5];
void draw() {
  background(#FFFFF2);
  for (int i=0; i<5; i++) {
    for (int j=0; j<5; j++) {
      if (pressed[i][j]==1) fill(128);
      else fill(255);
      rect(j*100, i*100, 100, 100);
      fill(0);
      text(""+table[i][j], 50+j*100, 50+i*100);
    }
  }
  text("You used         "+millis()/1000+"."+millis()/100%10, 200, 550);
}
int want = 1;
void mousePressed(){
  int i = mouseY/100, j = mouseX/100;
  if (i >= 0 && i<5 && j>=0 && j<5) {
    if (table[i][j] == want) {
      pressed[i][j] = 1;
      want++;
    }
  }
}
