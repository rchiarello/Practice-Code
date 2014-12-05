//declaring new object of the ball class
int count=10;
Ball[] b= new Ball[count];


void setup() {
  size(500, 500);
  //initialize new balls
  for (int i=0; i<count; i++) {
    b[i]= new Ball();
  }
}

void draw() {
  background(0);
  for (int i=0; i<count; i++) {
    b[i].move();
    b[i].bounce();
    b[i].display();
    b[i].fills();
    for (int j=0; j<count; j++) {
      if (i!=j) {
        b[i].collide(b[j]);
      }
    }
  }
}


//setting up the class called Ball
class Ball {
  //define properties of the ball class
  float sz, h;
  PVector loc, vel;

  //assign values to the properties of the class
  Ball() {
    sz=random(50,150);
    loc= new PVector(random(sz, width-sz), random(sz, height-sz));
    vel= PVector.random2D();
    h=random(360);
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
    colorMode(HSB, 360, 100, 100, 100);
    fill(h, 50, 100, 100);
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
    if(loc.y+sz/2<0){
      loc.y=height+sz/2;
    }
  }
}


//////////////////////////////////////////////////////
//////////////////////////////////////////////////////


