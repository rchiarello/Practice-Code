void setup() {
  size(500, 500);
  frameRate(15);
}

void draw() {
  if (mouseX>200 && mouseX<300 && mouseY>200 && mouseY<300) {
    background(0);
    rect(random(195, 205), random(195, 205), 100, 100);
    fill(random(255),random(255), random(255));
  } else {
    background(255);
    rect(200, 200, 100, 100);
    fill(0);
  }
}

