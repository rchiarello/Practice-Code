String[] letters= {
  "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N"
};
int i = 0;

void setup() {
  size(500, 500);
  frameRate(1);
}

void draw() {
  if (i<letters.length) {
    words(letters[i]);
    i++;
  }
  if (i>=letters.length) {
    background(0);
    i=0;
  }
}


void words(String s) {
  text(letters[i], mouseX, mouseY);
}

