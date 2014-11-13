int[] x= {
  50, 200, 110, 40, 80, 100
};
int[] y= {
  200, 250, 60, 500, 20, 100
};
int[] sz= {
  40, 50, 60, 70, 30, 200
};
int[] xspeed= {
  6, 5, -5, -7, 4, -6
};
int[] yspeed= {
  3, -3, -1, 2, 10, -5
};
int[] colors= {
  300, 0, 60, 120, 180, 240
};

void setup() {
  size(800, 600);
  colorMode(HSB, 360, 100, 100, 100);
}

void draw() {
  background(0);
  for (int i=0; i<x.length; i++) {
    fill(colors[i], 100, 100, 85);
    ellipse(x[i], y[i], sz[i], sz[i]);
    x[i]+=xspeed[i];
    y[i]+=yspeed[i];
    if (x[i]+sz[i]/2>width ||x[i]-sz[i]/2<0) {
      xspeed[i]=-xspeed[i];
    }
    if (y[i]+sz[i]/2>height ||y[i]-sz[i]/2<0) {
      yspeed[i]=-yspeed[i];
    }
  }
}

