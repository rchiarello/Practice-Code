boolean a=true;

void setup() {
  size(600, 600);
  frameRate(5);
  background(0);
}
void draw() {
  if (a) {
    fill(0, 255, 0);
    rect(random(width), random(height), 20, 20);
  } else {
    fill(255, 0, 0);
    rect(random(width), random(height), 20, 20);
  }
}
void mousePressed() {
  a=!a;
}

