//week15_04_copy_two_ball_cos
void setup(){
  size(640,360);
}
Ball ball = new Ball(100,200,60);
Ball ball2 =new Ball(300,200,60);
void draw(){
  background(51);
  ball.display();
  ball.update();
  
  ball2.display();
  ball2.update();
}
