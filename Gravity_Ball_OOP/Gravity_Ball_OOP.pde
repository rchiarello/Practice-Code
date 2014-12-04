//declare object array
int count=500;
GravityBall[] bouncer= new GravityBall[count];

void setup() {
  size(500, 500);
  //initialize object 
  for (int i =0; i<count; i++) { 
    bouncer[i]=new GravityBall(25);
  }
}

void draw() {
  background(0);
  for (int i =0; i<count; i++) {
    //call methods of object
    bouncer[i].display();
    bouncer[i].move();
    bouncer[i].wrap();
    bouncer[i].blues();
  }
}

//////////////////////////////////////////////////////
//////////////////////////////////////////////////////

//defining gravity ball class
class GravityBall {
  PVector loc, vel, acc;
  float sz, h;

  //constructor to initialize variables
  GravityBall(float tempsz) {
    sz=tempsz;
    loc=new PVector(random(sz/2, width-sz/2), random(height/2));
    vel=new PVector(random(5), 0);
    acc=new PVector(0, random(1));
    h=random(180,220);
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
    if (loc.x-sz/2>width) {
      vel.x=-abs(vel.x);
    }
    if (loc.x+sz/2<0) {
      vel.x=abs(vel.x);
    }
    if (loc.y-sz/2>height) {
      loc.y=height-sz/2;
      vel.y=-abs(vel.y);
    }
    //    if (loc.y-sz/2<0) {
    //      vel.y=abs(vel.y);
    //    }
  }
  
  void wrap() {
    //bounce the ball
    if (loc.x-sz/2>width) {
      loc.x=-sz/2;
      vel.x=-1;
    }
    if (loc.x+sz/2<0) {
      vel.x=abs(vel.x);
    }
    if (loc.y-sz/2>height) {
      loc.y=-sz/2;
      vel.y=-1;
    }
  }

  void fills() {
    colorMode(HSB, 360, 100, 100, 100);
    fill(h, 100, 100, 70);
  }
  
  void blues(){
   colorMode(HSB, 360,100,100,100);
   fill(h, random(50,100), 100, 100);
  }
}

