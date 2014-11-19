PVector l, v, a;
int sz=30;

void setup() {
  size(500, 500);
  l=new PVector(width/2, height/2);
  v=new PVector(0, 0);
  a=new PVector(0, 0);
}

void draw() {
  noStroke();
  if (mouseX>width/2) {
    fill(0, 0, random(255));
  }
  if (mouseX<width/2) {
    fill(random(255), 0, 0);
  }
  v.add(a);
  l.add(v);
  v.limit(5);
  a.set(random(-1, 1), random(-1, 1));
  ellipse(l.x, l.y, sz, sz);
  if (l.x-sz/2>width) {
    l.x=0-sz/2;
  }
  if (l.x+sz/2<0) {
    l.x=width+sz/2;
  }
  if (l.y-sz/2>height) {
    l.y=0-sz/2;
  }
  if (l.y+sz/2<0) {
    l.y=height+sz/2;
  }
}

