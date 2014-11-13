int dist=50;

void setup() {
  size(500, 500);
}

void draw() {
  stroke(255,0,0);
  for (int x=0; x<height+50; x+=dist) {
    rect(x-dist, 0, dist, height);
    if (mouseX>x && mouseX<x+dist) {
      fill(255);
    } else {
      fill(0);
    }
  }
}

