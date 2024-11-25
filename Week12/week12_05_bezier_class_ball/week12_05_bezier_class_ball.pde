//week12_05_bezier_class_ball
void setup() {
  size(500, 500);
}
PVector p0 = new PVector(120, 80);
PVector p1 = new PVector(320, 20);
PVector p2 = new PVector(320, 300);
PVector p3 = new PVector(120, 300);
float t0 =0.0;
void draw() {
  background(255, 255, 100);
  noFill();
  stroke(255, 102, 0);
  line(120, 80, 320, 20);
  line(320, 300, 120, 300);
  stroke(0, 0, 0);
  bezier(120, 80, 320, 20, 320, 300, 120, 300);
  for (float t =t0; t>=0; t-=0.025) {
    float x = p0.x*(1-t)*(1-t)*(1-t) + 3*p1.x*t*(1-t)*(1-t) + 3*p2.x*t*t*(1-t) + p3.x*t*t*t;
    float y = p0.y*(1-t)*(1-t)*(1-t) + 3*p1.y*t*(1-t)*(1-t) + 3*p2.y*t*t*(1-t) + p3.y*t*t*t;
    ellipse(x, y, 10, 10);
  }
}
void mouseDragged() {
  t0 += 0.01 * (mouseX - pmouseX);
}
class Ball {
  PVector p0, p1, p2, p3;
  float t = 0.0;
  Ball(PVector _p0, PVector _p1, PVector _p2, PVector _p3) {
    p0=_p0;
    p1=_p1;
    p2=_p2;
    p3=_p3;
  }
  void draw() {
      float x = p0.x*(1-t)*(1-t)*(1-t) + 3*p1.x*t*(1-t)*(1-t) + 3*p2.x*t*t*(1-t) + p3.x*t*t*t;
      float y = p0.y*(1-t)*(1-t)*(1-t) + 3*p1.y*t*(1-t)*(1-t) + 3*p2.y*t*t*(1-t) + p3.y*t*t*t;
      ellipse(x, y, 10, 10);
      t+=0.001;
    }
  }
