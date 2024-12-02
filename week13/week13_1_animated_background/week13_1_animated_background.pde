//week13_1_animated_background
PImage [] img = new PImage[3];
void setup(){
  size(346,408);
  img[0] = loadImage("00002.jpg");
  img[1] = loadImage("00003.jpg");
  
}
int I = 0;
void draw(){
  background(img[I]);
  if(frameCount%24==0) I=(I+1)%2;
}
