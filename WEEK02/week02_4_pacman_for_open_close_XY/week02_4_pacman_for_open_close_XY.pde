//week02_3_pacman_for_open_close
void setup() {
  size(400, 400);
  frameRate(200);
}
int x = 200, y = 200;
void draw() {
  background(255);
  fill(#FFDC0F);
  if (keyPressed && keyCode==RIGHT)x++;
  if (keyPressed && keyCode==LEFT)x--;
  if (keyPressed && keyCode==UP)y--;
  if (keyPressed && keyCode==DOWN)y++;
  ellipse(x, y, 100, 100);
}
