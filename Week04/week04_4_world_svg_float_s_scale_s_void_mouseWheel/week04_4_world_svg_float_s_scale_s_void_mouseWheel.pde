//week04_4_world_svg_float_s_scale_s_void_mouseWheel
PShape world;
void setup(){
 size(1000,500);
 world = loadShape("world.svg");
}
float s = 0.5;
void draw(){
 background(#92C2F5);
 scale(s);
 shape(world);
}

void mouseWheel(MouseEvent e){
 if(e.getCount()>0) s *= 1.05;
 else s *= 0.95;
}
