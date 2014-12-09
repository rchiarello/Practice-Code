//setting up the class called Ball
class Ball {
  //define properties of the ball class
  float sz, h, s, b, a;
  PVector loc, vel;

  //assign values to the properties of the class
  Ball(float tempx, float tempy, float tempsz) {
    sz=tempsz;
    loc= new PVector(tempx, tempy);
    vel= PVector.random2D();
    h=random(180, 220);
    s=100;
    b=100;
    a=70;
  }

  //make the ball do things using methods (defining a function)

  //displays the ball on the screen
  void display() {
    ellipse(loc.x, loc.y, sz, sz);
  }

  //moves the ball
  void move() {
    loc.add(vel);
  } 

  //bounces ball off walls
  void bounce() {
    if (loc.x+sz/2>width || loc.x-sz/2<0) {
      vel.x*=-1;
    }
    if (loc.y+sz/2>height || loc.y-sz/2<0) {
      vel.y*=-1;
    }
  }

  void collide(Ball b2) {
    if (loc.dist(b2.loc) < sz/2 + b2.sz/2) {
      vel=PVector.sub(loc, b2.loc);
      vel.normalize();
    }
  }

  void fills() {
    noStroke();
    colorMode(HSB, 360, 100, 100, 100);
    fill(h, s, b, a);
    a-=.1;
  }

  void wrap() {
    //wrap the ball around
    if (loc.x-sz/2>width) {
      loc.x=-sz/2;
    }
    if (loc.x+sz/2<0) {
      loc.x=width+sz/2;
    }
    if (loc.y-sz/2>height) {
      loc.y=-sz/2;
    }
    if (loc.y+sz/2<0) {
      loc.y=height+sz/2;
    }
  }
}

