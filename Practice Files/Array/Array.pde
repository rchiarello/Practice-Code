int i=0;
int y=20;
String[] numbers= {
  "zero", "one", "two", "three", "four", "five"
};

void setup() {
  size(500, 500);
}
void draw() {
  text(numbers[i], 20, y);
  i+=1;
  y+=20;
}

