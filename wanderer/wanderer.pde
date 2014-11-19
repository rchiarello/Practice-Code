float lx, ly, vx, vy, ax, ay;
int sz=30;

void setup() {
  size(500, 500);
  lx=width/2;
  ly=height/2;
  vx=0;
  vy=0;
  ax=0;
  ay=0;
}

void draw() {
  if (mouseX>width/2) {
    fill(0, 0, random(255));
  }
  if(mouseX<width/2){
   fill(random(255), 0,0); 
  }
  vx+=ax;
  vy+=ay;
  lx+=vx;
  ly+=vy;
  vx=constrain(vx, -5, 5);
  vy=constrain(vy, -5, 5);
  ax=random(-1, 1);
  ay=random(-1, 1);
  ellipse(lx, ly, sz, sz);
  if (lx-sz/2>width) {
    lx=0-sz/2;
  }
  if (lx+sz/2<0) {
    lx=width+sz/2;
  }
  if (ly-sz/2>height) {
    ly=0-sz/2;
  }
  if (ly+sz/2<0) {
    ly=height+sz/2;
  }
}

