//DEFINING AND INITIALIZING A NEW ARRAY LIST OF PARTICLES AND CLOUD PARTICLES, AND A NEW LIGHTNING
ArrayList<Particle> p= new ArrayList<Particle>();
ArrayList<CloudParticle> c= new ArrayList<CloudParticle>();
Lightning l;

void setup() {
  size(500, 500);

  //ADDING A SET NUMBER OF CLOUD PARTICLES TO THE ARRAY LIST EACH FRAME
  for (int i=0; i<50; i++) {
    c.add(new CloudParticle(random(width), random(height*.1), random(80, 100)));
  }
}


void draw() {
  //PRINTS THE SIZE OF THE PARTICLE ARRAY LIST AND THE CLOUD PARTICLE ARRAY LIST
  println(c.size(), " and ", p.size());
  
  //ADDING A SET NUMBER OF PARTICLES TO THE ARRAY LIST EACH FRAME
  for (int i=0; i<5; i++) {
    p.add(new Particle(random(width), 40, random(205, 235), 60));
  }
  
  l.add(new Lightning(random(30, width-30), 40, random(50, 100)));
  l.display();

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
    b.teleport(b);
  }
}

