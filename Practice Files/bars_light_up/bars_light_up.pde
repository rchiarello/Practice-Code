int w=25;

void setup() {
  size(500, 500);
}

void draw() {
  stroke(255, 0, 0);
  for (int x=0; x<width; x+=w) {
    if (mouseX>x && mouseX<x+w) {
      fill(255);
    } else {
      fill(0);
    }        
    rect(x, 0, w, height);
  }
}

