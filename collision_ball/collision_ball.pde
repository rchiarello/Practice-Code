float sz=100;
PVector loc;
PVector mouse;

void setup() {
  size(500, 500); 
  loc=new PVector(width/2, height/2);
  mouse=new PVector();
}

void draw() {
  background(0);
  mouse.set(mouseX, mouseY);
  ellipse(loc.x, loc.y, sz, sz);
  if (loc.dist(mouse)<sz/2) {
    loc.set(random(width), random(height));
  }
}

