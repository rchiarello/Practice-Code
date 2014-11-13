int count=100;
float[] x= new float[count];
float[] y= new float[count];


void setup() {
  size(500, 500);
}

void draw() {
  background(0);
  if (pmouseX!=mouseX || pmouseY !=mouseY) {
    for (int i=0; i<count-1; i++) {
      x[i]= x[i+1];
      y[i]= y[i+1];
    }
  }
  x[count-1]=mouseX;
  y[count-1]=mouseY;
  for (int i=count-1; i>0; i--) {
    ellipse(x[i], y[i], i*2+10, i*2+10);
  }
}

