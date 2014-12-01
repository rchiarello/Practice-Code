PImage pancake;
int sz=200;

void setup(){
  size(500,500);
 pancake= loadImage("Pusheen Pancakes.jpg");
}

void draw(){
  background(255);
  image(pancake, mouseX-sz/2, mouseY-sz/2, sz, sz);
}
