ArrayList<Particle> p= new ArrayList<Particle>();
void setup() {
  size(500, 500);
}

void draw() {
  p.add(new Particle(width/2, height*.1));
  background(0);
  for (int i=p.size ()-1; i>0; i--) {
    Particle a=p.get(i);
    a.display();
    a.move();
  }
}


/////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////

class Particle {
  PVector loc, vel, acc;
  float sz;

  Particle(float x, float y) {
    loc=new PVector(x, y);
    vel=new PVector(random(-2, 2), random(1,3));
    acc=new PVector(0, random(.1, 1));
    sz= 20;
  }

  void display() {
    ellipse(loc.x, loc.y, sz, sz);
  }

  void move() {
    vel.add(acc);
    loc.add(vel);
  }
}

