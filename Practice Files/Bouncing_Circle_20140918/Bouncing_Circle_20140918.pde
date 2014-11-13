//declare the variables
int x;
int y;
int speedX;
int speedY;

void setup(){
 size(700,700);
//initialize the variables
x=width/2;
y=0;
speedX=5;
speedY=7;
}

void draw(){
  background(0);
  ellipse(x,y,20,20);
  x=x+speedX;
  y=y+speedY;
  //to make it bounce
  
  if(x>width){
   speedX=-5;
  }
  
  if(x<0){
   speedX=5;
  }
  
  if(y>height){
   speedY=-7; 
  }
  
  if(y<0){
    speedY=7;
  }
}
