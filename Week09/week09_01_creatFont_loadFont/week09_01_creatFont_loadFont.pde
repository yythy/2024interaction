//week09_01_creatFont_loadFont
size(500,500);
background(0);
textSize(50);
text("Hellow",50,50);

PFont font = createFont("標楷體",50);
textFont(font);
text("你好",50,150);

PFont font2 = createFont("elffont-rock.otf",50);
textFont(font2);
text("ㄎㄌㄆㄉ",50,250);
