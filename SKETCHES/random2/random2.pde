int count = 10;

Rectangle rec;

void setup() {
  size(600, 600);
  background(255);
  //rec = new Rectangle();
}

void drawCircle(float x, float y, float r) {
  fill(sin(frameCount/10)*255);
  circle(x, y, r);
}

void draw()
{
  fill(0,40);
  rect(0,0,width,height);
  stroke(0);
  drawCircle(random(width), random(height), random(200));
  
  
}
