//declaring new object of the ball class
ArrayList<Ball> b=new ArrayList<Ball>();
BlackHole eating;

void setup() {
  size(800, 600);
  eating=new BlackHole();
  //initialize new balls
  //  b.add(new Ball(width/2, height/2, random(30, 100)));
}

void draw() {
  colorMode(RGB);
  background(0, 0, 20);
  for (int i=0; i<b.size (); i++) {
    Ball p= b.get(i);
    p.move();
    p.bounce();
    p.display();
    p.fills();
    eating.display();
    for (int j=0; j<b.size (); j++) {
      if (i!=j) {
        Ball p2= b.get(j);
        p.collide(p2);
      }
      if (eating.consume(p)) {
        b.remove(i);
      }
    }
  }
}
void mousePressed() {
  for (int i=0; i<1; i++) {
    b.add(new Ball(random(100, width-100), random(100, height-100), random(30, 60)));
  }
  if (b.size()>100) {
    b.remove(0);
  }
}

