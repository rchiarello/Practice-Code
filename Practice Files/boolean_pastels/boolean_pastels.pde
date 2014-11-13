boolean heraldo=true;

void setup() {
  size(500, 500);
  frameRate(15);
  background(255);
  colorMode(HSB, 360, 100, 100, 100);
  noStroke();
}

void draw() {
  if (heraldo) {
    fill(random(360), 25, 95, 50);
    rect(random(width), random(height), 20, 20);
  } else {
    fill(random(360), 25, 95, 50);
    ellipse(random(width), random(height), 20, 20);
  }
}

void mousePressed() {
  heraldo=!heraldo;
}

