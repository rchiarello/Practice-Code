//declaring new object of the ball class
Ball b;
Ball c;

void setup() {
  size(500, 500);
  //initialize new balls
  b=new Ball();
  c=new Ball();
}

void draw() {
  background(0);
  b.move();
  b.bounce();
  b.display();
  c.move();
  c.bounce();
  c.display();
}


//setting up the class called Ball
class Ball {
  //define properties of the ball class
  float sz;
  int h;
  PVector loc, vel;

  //assign values to the properties of the class
  Ball() {
    sz=50;
    loc= new PVector(width/2, height/2);
    vel= PVector.random2D();
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
}

