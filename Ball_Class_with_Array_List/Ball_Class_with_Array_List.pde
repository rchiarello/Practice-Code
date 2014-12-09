//declaring new object of the ball class
ArrayList<Ball> b=new ArrayList<Ball>();


void setup() {
  size(800, 600);
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
    for (int j=0; j<b.size (); j++) {
      if (i!=j) {
        Ball p2= b.get(j);
        p.collide(p2);
      }
    }
  }
}
void mousePressed() {
  for(int i=0; i<20; i++){
    b.add(new Ball(width/2, height/2, random(30, 60)));

  }
  if (b.size()>100) {
    b.remove(0);
  }
}

