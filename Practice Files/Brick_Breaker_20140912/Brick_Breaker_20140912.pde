void setup(){
  size(500,500);
}

void draw(){
  background(0);
  fill(random(155,255),0,0);
  ellipse(mouseX, mouseY, width/6, 60);
  stroke(255);
  strokeWeight(10);
  rect(mouseX,400,width/6,10);
  println(frameRate);
}
