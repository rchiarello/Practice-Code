//declare PVector arrays and variable arrays
int count=100;
PVector[] loc= new PVector[count];
PVector[] vel= new PVector[count];
PVector[] acc= new PVector[count];
float[] sz= new float[count];
float[] mass= new float[count];
int minDiam= 10;
int maxDiam= 30;

void setup() {
  frameRate(120);
  size(600, 500);
  for (int i=0; i<count; i++) {
    //initialize variables
    sz[i]=random(minDiam, maxDiam);
    loc[i]=new PVector(random(0, width), random(0, height));
    vel[i]=PVector.random2D();
    acc[i]=new PVector(0, 0);
    mass[i]= map(sz[i], minDiam, maxDiam, .5, 1.5);
  }
}

void draw() {
  background(0);

  for (int i=0; i<count; i++) {

    //increase vel by acc
    vel[i].add(acc[i]);

    //increase loc by vel
    loc[i].add(vel[i]);

    // draw ellipse
    ellipse(loc[i].x, loc[i].y, sz[i], sz[i]);

    //make first ball bounce off the wall
    if (loc[i].x+sz[i]/2>width) {
      vel[i].x=-abs(vel[i].x);
    }
    if (loc[i].x-sz[i]/2<0) {
      vel[i].x=abs(vel[i].x);
    }
    if (loc[i].y+sz[i]/2>height) {
      vel[i].y=-abs(vel[i].y);
    }
    if (loc[i].y-sz[i]/2<0) {
      vel[i].y=abs(vel[i].y);
    }
    //checking if the balls bounce off each other
    for (int j=0; j<count; j++) {
      if (i!=j) {
        if (loc[i].dist(loc[j])<(sz[i]/2)+(sz[j]/2)) {
          println("touch   ");
          vel[i]= PVector.sub(loc[i], loc[j]);
          vel[i].normalize();
        }
      }
    }
  }
}

