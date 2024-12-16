//week15_02_circle_class_update
void setup(){
  size(640,360);
}
Ball ball = new Ball(100,200,20);
void draw(){
  ball.display();
  ball.update();
}
