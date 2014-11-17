float lx;
float ly=0;
float vx=0;
float vy=0;
float ax=0;
float ay=.1;
float sz=30;

void setup() {
  size(500, 500);
  lx=width/2;
}

void draw() {
  background(0);
  vx+=ax;
  vy+=ay;
  lx+=vx;
  ly+=vy;
  ellipse(lx, ly, sz, sz);
  if (ly>height) {
    ly=height;
    vy*=-1;
  }
}

