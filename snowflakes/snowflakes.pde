int count=5;
PVector[] loc= new PVector[count];
PVector[] vel= new PVector[count];
PVector[] acc= new PVector[count];
float[] sz= new float[count];
//PImage snowflake;

void setup() {
  for (int i=0; i<count; i++) {
    sz[i]=random(10, 15);
    loc[i]=new PVector(random(width), random(height, sz/2));
    vel[i]=new PVector(0, 1);
    acc[i]=new PVector(0, .01);
  }
//  snowflake=loadImage("");
}

void draw() {
  //accelerating the snowflakes
  acc.x= random(-.1, .1);

  //drawing the snowflakes
  for (int i=0; i<count; i++) {
    ellipse(loc[i].x, loc[i].y, sz[i], sz[i]);
  }
}

