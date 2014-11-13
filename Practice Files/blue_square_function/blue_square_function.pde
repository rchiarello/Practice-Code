void setup() {
  size(500, 500);
}

void draw() {
  background(0);
  blueSquare(mouseX, mouseY, mouseY);
}

void blueSquare(int x, int y, int w) {
  fill(0, 0, 255);
  rect(x, y, w, w);
}

