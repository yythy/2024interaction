//week04_2_pushMatrix_scale_popMatrix
size(500, 500);
PShape taiwan = loadShape("Taiwan-icon.svg");
PShape taiwan2 = loadShape("tw.svg");
pushMatrix();
  scale(10);
  shape(taiwan);
popMatrix();

pushMatrix();
  scale(0.5);
  shape(taiwan2);
popMatrix();
