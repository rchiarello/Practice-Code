//declare object
GravityBall bouncer;

void setup() {
  size(500, 500);
  //initialize object 
  bouncer=new GravityBall();
}

void draw() {
  //call methods of object
  bouncer.display();
  bouncer.move();
  bouncer.bounce();
}



//defining gravity ball class
class GravityBall {
  PVector loc, vel, acc;
  int sz;

  //constructor to initialize variables
  GravityBall() {
    sz=50;
    loc=new PVector(0, 10);
    vel=new PVector(1, 0);
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
}


