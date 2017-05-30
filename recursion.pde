void setup() {
  size(1000 , 1000);
}

void draw() {
  background(255);
  stroke(0);
  noFill();
  drawCircle(width/2, height/2, 650);
}

void drawCircle(float x, float y, float radius) {
  ellipse(x, y, radius, radius);
  if (radius > 2) {
    //Uncomment the other one if you want.
    //drawCircle(x + radius/2, y, radius/2);
    //drawCircle(x - radius/2, y, radius/2);
    drawCircle(x, y + radius/2, radius/2);
    drawCircle(x, y - radius/2, radius/2);
  }
}