float x=100;
float y=100;
float w=100;
float h=50;
float hue=0;

void setup() {
  size(500, 500); 
  colorMode(HSB, 360, 100, 100, 100);
}

void draw() {
  fill(hue%360, 100, 100);
  hue++;
  rect(x, y, w, h);
  if (mouseX>x && mouseX<x+w && mouseY>y && mouseY<y+h) {
    x=random(50, 450);
    y=random(50, 450);
  }
}

