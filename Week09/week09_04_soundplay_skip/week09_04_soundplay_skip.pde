//week09_04_soundplay_skip
import processing.sound.*;
SoundFile sound1,sound2,slash;
void setup(){
  size(500,500);
  sound1 = new SoundFile(this,"In Game Music.mp3");
  sound2 = new SoundFile(this,"Intro Song_Final.mp3");
  slash = new SoundFile(this,"sword .mp3");
  sound2.play();
}
void draw(){
  background(255);
}
void mousePressed(){
  slash.play();
}
void keyPressed(){
  if(key=='1'){
    sound2.stop();
    sound1.play();
  }
  
  if(key=='2'){
    sound1.stop();
    sound2.play();
  }
}
