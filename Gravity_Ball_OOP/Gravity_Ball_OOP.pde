//declare object array
int count=10;
GravityBall[] bouncer= new GravityBall[count];

void setup() {
  size(500, 500);
  //initialize object 
  for (int i =0; i<count; i++) { 
    bouncer[i]=new GravityBall();
    bouncer[i].fills();
  }
}

void draw() {
  background(0);
  for (int i =0; i<count; i++) {
    //call methods of object
    bouncer[i].display();
    bouncer[i].move();
    bouncer[i].bounce();
    //    bouncer[i].fills();
  }
}



//defining gravity ball class
class GravityBall {
  PVector loc, vel, acc;
  int sz;

  //constructor to initialize variables
  GravityBall() {
    sz=50;
    loc=new PVector(random(sz/2, width-sz/2), random(height/2));
    vel=new PVector(random(5), 0);
    acc=new PVector(0, .1);
  }
  //define methods
  void display() {
    //display ellipse
    ellipse(loc.x, loc.y, sz, sz);
  }

  void move() {
    //move the ball
    vel.add(acc);
    loc.add(vel);
  }

  void bounce() {
    //bounce the ball
    if (loc.x+sz/2>width) {
      vel.x=-abs(vel.x);
    }
    if (loc.x-sz/2<0) {
      vel.x=abs(vel.x);
    }
    if (loc.y+sz/2>height) {
      loc.y=height-sz/2;
      vel.y=-abs(vel.y);
    }
    //    if (loc.y-sz/2<0) {
    //      vel.y=abs(vel.y);
    //    }
  }

  void fills() {
    colorMode(HSB, 360, 100, 100);
    fill(random(360), 100, 100, 50);
  }
}

