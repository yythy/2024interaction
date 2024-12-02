//week13_4_obj_loadshape
PShape gumdam;
void setup(){
  size(500,500,P3D);
  gumdam = loadShape("Gundam.obj");
}
void draw(){
  shape(gumdam,0,0,250,500);
}
