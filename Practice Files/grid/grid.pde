int d=20;

void setup() {
  size(500, 500);
}

void draw() {
  stroke(0, 255, 255);
  for (int x=0; x<width; x+=d) {
    for (int y=0; y<height; y+=d) {
      if (mouseX>x && mouseX<x+d && mouseY>y && mouseY<y+d) {
        fill(0, 0, 255);
      } else {
        fill(0, 0, 0);
      }
      rect(x, y, d, d);
    }
  }
}

