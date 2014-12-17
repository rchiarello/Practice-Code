class CloudParticle {

  //DEFINING NECESSARY VARIABLES FOR EACH PARTICLE
  PVector loc, vel, acc;
  float sz;
  float h, s, b, a;

  //SETTING UP USE CONSTRUCTOR FOR THE PARTICLES
  CloudParticle(float tempX, float tempY, float tempsz) {

    //INITIALIZING VARIABLES
    loc=new PVector(tempX, tempY);
    vel=new PVector(2, 0);
    acc=new PVector(0, 0);
    sz= tempsz;
    h=0;
    s=0;
    b=50;
    a=80;
  }

  //DEFINING METHODS FOR THE CLASS
  void display() {
    stroke(0, 50);
    //DISPLAYS THE PARTICLE ON THE SCREEN
    ellipse(loc.x, loc.y, sz*2, sz);
  }

  void move() {
    //MOVES THE PARTICLE ACROSS/ DOWN THE SCREEN
    vel.add(acc);
    loc.add(vel);
  }

  void colors() {
    //TELLS WHAT COLORS TO MAKE THE OBJECT
    colorMode(HSB, 360, 100, 100, 100);
    fill(h, s, b, a);
  }

  boolean isDead() {
    //DETERMINING IF THE PARTICLE SHOULD DIE
    if (loc.x>width) {
      //PARTICLE SHOULD DIE IF IT GOES TO THE RIGHT OF THE SCREEN
      return true;
    } else {
      //PARTICLE SHOULD NOT DIE IF IT IS STILL ON THE SCREEN
      return false;
    }
  }
}

