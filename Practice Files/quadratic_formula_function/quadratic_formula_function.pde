void setup() {
  size(500, 500);
}
void draw() {
  background(0);
  text("the answers are " + QF(1, 7, 1)[0] + " and " + QF(1, 7, 1)[1], 10, height/2);
}

//using 1 equation with array of results

float[] QF(float a, float b, float c) {
  float[] x= new float[2];
  x[0]=(-b+sqrt(sq(b)-(4*a*c)))/2*a;
  x[1]=(-b-sqrt(sq(b)-(4*a*c)))/2*a;
  return x;
}




//using 2 equations with separate results

//float QF1(float a, float b, float c) {
//  float x= (-b+sqrt(sq(b)-(4*a*c)))/2*a;
//  return x;
//}
//
//float QF2(float a, float b, float c) {
//  float x= (-b-sqrt(sq(b)-(4*a*c)))/2*a;
//  return x;
//}

