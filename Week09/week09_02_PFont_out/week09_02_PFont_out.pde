//week09_02_PFont_out
//在外面宣告，否則會占用記憶體當機
PFont font0, font1, font2;
void setup() {
  size(500, 500);
  font0 = createFont("Arial", 50);
  font1 = createFont("標楷體", 50);
  font2 = createFont("elffont-rock.otf", 50);
}

void draw() {
  background(0);
  textSize(50);
  
  textFont(font0);
  text("Hello", 50, 50);


  textFont(font1);
  text("你好", 50, 150);


  textFont(font2);
  text("ㄎㄌㄆㄉ", 50, 250);
}
