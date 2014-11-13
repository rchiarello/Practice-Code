void draw() {
  background(0);
  text("c equals " + PThrm(1, sqrt(3)), mouseX, mouseY);
}

float PThrm(float a, float b) {
  float c= sqrt(sq(a)+sq(b));
  return c;
}

