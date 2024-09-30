//week04_5_world_svg_translate_XY
PShape world;
void setup(){
 size(1000,500);
 world = loadShape("world.svg");
}
float s = 0.5,x=0,y=0;
void draw(){
 background(#92C2F5);
 translate(x,y);
 scale(s);
 shape(world);
}
void mouseDragged(){
 x +=mouseX-pmouseX;
 y +=mouseY-pmouseY;
}


void mouseWheel(MouseEvent e){
 if(e.getCount()>0) s *= 1.05;
 else s *= 0.95;
}
