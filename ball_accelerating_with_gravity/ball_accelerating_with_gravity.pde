float lx;
float ly=0;
float vx=2;
float vy=0;
float ax=0;
float ay=.1;
float sz=30;
float f=.9;

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
  if (ly+sz/2>height) {
    ly=height-sz/2;
    vy*=-f;
    vx*=f;
  }
  if (lx-sz/2<0) {
    vx=abs(vx)*f;
  }
  if (lx+sz/2>width) {
    vx=-abs(vx)*f;
  }
}

