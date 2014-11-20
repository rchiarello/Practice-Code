//declare PVectors and variables
float sz=100;
PVector loc;
PVector mouse;
PVector vel;

void setup() {
  size(800, 500); 
  //initialize the PVectors
  loc=new PVector(width/2, height/2);
  mouse=new PVector();
  vel=new PVector(5, 5);
}

void draw() {
  background(0);

  //set value for mouse PVector
  mouse.set(mouseX, mouseY);

  //draw ellipse based on loc
  ellipse(loc.x, loc.y, sz, sz);

  //increase loc by vel
  loc.add(vel);

  //make ball bounce off the wall
  if (loc.x+sz/2>width) {
    vel.x=-abs(vel.x);
  }
  if (loc.x-sz/2<0) {
    vel.x=abs(vel.x);
  }
  if (loc.y+sz/2>height) {
    vel.y=-abs(vel.y);
  }
  if (loc.y-sz/2<0) {
    vel.y=abs(vel.y);
  }

  //make ball bounce when it hits the mouse
  if (loc.dist(mouse)<sz/2) {
    if (loc.x<mouse.x) {
      vel.x=-abs(vel.x);
    } else {
      vel.x=abs(vel.x);
    }
    if (loc.y>mouse.y) {
      vel.y=abs(vel.y);
    } else {
      vel.y=-abs(vel.y);
    }
  }
}

