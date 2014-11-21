//declare PVectors and variables
float sz=100;
float sz2=150;
PVector loc, vel, acc;
PVector loc2, vel2, acc2;

void setup() {
  size(800, 700); 
  //initialize the PVectors
  loc=new PVector(width/2, height/2);
  vel=new PVector(-6, -5);
  acc=new PVector();
  loc2=new PVector(width/5, height/5);
  vel2=new PVector(7, 4);
  acc2=new PVector();
}

void draw() {
  background(0);

  //draw ellipse based on loc
  ellipse(loc.x, loc.y, sz, sz);
  ellipse(loc2.x, loc2.y, sz2, sz2);

  //increase vel by acc
  vel.add(acc);
  vel2.add(acc);

  //increase loc by vel
  loc.add(vel);
  loc2.add(vel2);

  //make first ball bounce off the wall
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

  //make second ball bounce off the wall
  if (loc2.x+sz/2>width) {
    vel2.x=-abs(vel2.x);
  }
  if (loc2.x-sz2/2<0) {
    vel2.x=abs(vel2.x);
  }
  if (loc2.y+sz2/2>height) {
    vel2.y=-abs(vel2.y);
  }
  if (loc2.y-sz2/2<0) {
    vel2.y=abs(vel2.y);
  }

  //make balls bounce off each other
  if (loc.dist(loc2)<(sz/2)+(sz2/2)) {
    println("touch   ");
    if (loc.x<loc2.x) {
      vel.x=-abs(vel.x);
      vel2.x=abs(vel2.x);
    } else {
      vel.x=abs(vel.x);
      vel2.x=-abs(vel2.x);
    }
    if (loc.y<loc2.y) {
      vel.y=-abs(vel.y);
      vel2.y=abs(vel2.y);
    } else {
      vel.y=abs(vel.y);
      vel2.y=-abs(vel2.y);
    }
  }
}

