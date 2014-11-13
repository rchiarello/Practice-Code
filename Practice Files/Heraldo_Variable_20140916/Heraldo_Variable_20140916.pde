//declare
float Heraldo;

void setup(){
  size(900,900);
  //initialize
  Heraldo = 10;
}

void draw(){
  background(0);
  fill(Heraldo*9, Heraldo/2, Heraldo);
  ellipse(Heraldo, Heraldo*5, Heraldo/3, Heraldo*3);
  fill(Heraldo/2, Heraldo*9, Heraldo);
  rect(Heraldo*5, Heraldo, Heraldo*3, Heraldo/3);
  fill(0, 0, Heraldo*2);
  ellipse(Heraldo, Heraldo, Heraldo, Heraldo);
  Heraldo = Heraldo +.2;
}
