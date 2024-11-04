//week09_03_processing_sound
// Sketch -> Library -> Manager 搜尋sound 下載processing foundation
// File -> Examples, Library核心函式 -> sound -> soundfile ->SimplePlay
//selfmade 最精簡版本
import processing.sound.*;
SoundFile sound;

void setup(){
  size(500,500);
  sound = new SoundFile(this,"In Game Music.mp3");
  //sound.play();撥一次
  sound.loop();//一直撥
}
