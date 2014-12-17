//DEFINING AND INITIALIZING A NEW ARRAY LIST OF PARTICLES
ArrayList<Particle> p= new ArrayList<Particle>();
ArrayList<CloudParticle> c= new ArrayList<CloudParticle>();

void setup() {
  size(500, 500);
}

void draw() {
  println(c.size());
  //ADDING A SET NUMBER OF PARTICLES TO THE ARRAY LIST EACH FRAME
  for (int i=0; i<10; i++) {
    p.add(new Particle(random(width), -20, random(205, 235), 60));
  }

  //ADDING A SET NUMBER OF CLOUD PARTICLES TO THE ARRAY LIST EACH FRAME
  for (int i=0; i<1; i++) {
    c.add(new CloudParticle(random(width), height*.05, random(80, 100)));
  }

  //SETTING THE BACKGROUND
  background(230, 100, 15);

  //GOING THROUGH FOR EACH PARTICLE IN THE ARRAY LIST
  for (int i=p.size ()-1; i>0; i--) {

    //SETTING UP A PLACEHOLDER TO WORK WITH THE METHODS
    Particle a=p.get(i);

    //CALLING METHODS
    a.display();
    a.move();
    a.colors();
    if (a.isDead()) {
      p.remove(i);
    }
  }

  //GOING THROUGH FOR EACH CLOUD PARTICLE IN THE ARRAY LIST
  for (int i=p.size ()-1; i>0; i--) {

    //SETTING UP A PLACEHOLDER TO WORK WITH THE METHODS
    Particle a=p.get(i);

    //CALLING METHODS
    a.display();
    a.move();
    a.colors();
    if (a.isDead()) {
      p.remove(i);
    }
  }

  //GOING THROUGH EACH CLOUD PARTICLE IN THE ARRAY LIST
  for (int i=c.size ()-1; i>0; i--) {

    //SETTING UP A PLACEHOLDER TO WORK WITH THE METHODS
    CloudParticle b=c.get(i);

    //CALLING METHODS
    b.display();
    b.move();
    b.colors();
    if (b.isDead()) {
      c.remove(i);
    }
  }
}

