class Lightning{
 
 //DEFINING NECESSARY VARIABLES FOR EACH LIGHTNING
  PVector loc;
  float sz;
  PImage light;

  //SETTING UP CONSTRUCTOR FOR THE LIGHTNING
  Lightning(float tempX, float tempY, float tempsz) {

    //INITIALIZING VARIABLES
    loc=new PVector(tempX, tempY);
    sz= tempsz;
    light= loadImage("lightning-bolt.png");
  }

  //DEFINING METHODS FOR THE CLASS
  void display() {
    //DISPLAYS THE IMAGE ON THE SCREEN
    image(light, loc.x, loc.y, sz, sz);
  }

//  boolean isDead() {
//    //DETERMINING IF THE PARTICLE SHOULD DIE
//    if (loc.x>width+sz/2) {
//
//      //PARTICLE SHOULD DIE IF IT GOES TO THE RIGHT OF THE SCREEN
//      return true;
//    } else {
//
//      //PARTICLE SHOULD NOT DIE IF IT IS STILL ON THE SCREEN
//      return false;
//    }
//  }
  
}
