//week14_01_draw_lines_mouse
void setup(){
  size(500,500);
}
int x =-1,y = -1;
void draw(){
  if(x != -1){
    ellipse(x,y,1,1);
    y++;
  }
}
void mouseDragged(){
  if(mouseButton == LEFT)line(mouseX,mouseY,pmouseX,pmouseY);
  if(mouseButton == LEFT){
    x = mouseX;
    y = mouseY;
  }
}
