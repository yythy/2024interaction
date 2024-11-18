//week_11_02_color_dot
size(600, 600);
noStroke();
fill(236, 152, 52);//色彩一
rect(0, 0, 300, 300);

fill(122, 202, 249);//色彩二
rect(300, 0, 300, 300);

fill(129, 241, 128);//色彩三
rect(0, 300, 300, 300);

fill(230, 95, 155);
rect(300, 300, 300, 300);//色彩四
fill(122, 202, 249);
for(float y = 0; y< 300;y += 15){
   for(float x = 0; x<300; x += 30){
      ellipse(x, y, 11, 11); 
      ellipse(x+15, y+7, 11, 11);
   }
}
fill(236, 152, 52);
for(float y = 0; y< 300;y += 15){
   for(float x = 0; x<300; x += 30){
      ellipse(x, y, 11, 11); 
      ellipse(300+x+15, y+7, 11, 11);
   }
}
