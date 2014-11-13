int x=0;

void setup() {
  size(500, 500);
  frameRate(2);
}

void draw() {
  background(0);
  while (x<50) {
    fill(0, 0, random(255));
    rect(random(width), random(height), 20, 20);
    fill(random(255), 0, 0);
    rect(random(width), random(height), 20, 20);
    fill(0, random(255), 0);
    rect(random(width), random(height), 20, 20);
    x++;
  }
  x=0;
}

