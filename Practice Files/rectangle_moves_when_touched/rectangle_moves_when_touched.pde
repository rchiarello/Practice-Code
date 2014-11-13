float rx=width/2;
float ry=height/2;
float w=50;
float h=50;

void setup() {
  size(500, 500);
}

void draw() {
  background(0);
  rect(rx, ry, w, h);
  if (mouseX>rx && mouseX<rx+w && mouseY>ry && mouseY<ry+h) {
    rx=random(0, 450);
    ry=random(0, 450);  
    fill(random(255), random(255), random(255), random(150,255));
    rect(rx, ry, w, h);
  }
}

