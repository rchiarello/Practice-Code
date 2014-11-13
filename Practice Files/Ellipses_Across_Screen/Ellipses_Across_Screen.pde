int y;
int z;

void setup() {
  size(500, 500);
}

void draw() {
  while (z<10) {
    ellipse(width/2, y, 20, 20);
    z++;
    y+=height/9;
  }
}

