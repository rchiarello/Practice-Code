class BlackHole {
  //declare variables
  PVector loc;
  float sz;

  //initialize
  BlackHole() {
    loc=new PVector(random(100, width-100), random(100, height-100));
    sz=100;
  }

  //define methods
  void display() {
    ellipse(loc.x, loc.y, sz, sz);
  }

  boolean consume(Ball food) {
    if (loc.dist(food.loc)<sz/2+food.sz/2) {
      print("EAT ");
      return true;
    } else { 
      return false;
    }
  }
}

