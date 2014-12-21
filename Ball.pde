class Ball{


float x=320;
float y=460;
float xSpeed;
float ySpeed;
float size;


void firsttt(){
  fill(255);
  ellipse(320,460,size,size);
}

void move(){

     x=x+xSpeed;
     y=y+ySpeed; 

  if(x<0 || x>width){
     xSpeed*= -1;

   }
   if(y<0 || y>height){
     ySpeed*= -1;
   }
   
}


void display(){

  fill(255);
  ellipse(x,y,size,size);


}
Ball(float x, float y){
  this.x=x;
  this.y=y;
  xSpeed =random(-5,5);
  ySpeed = (-5);
  size = 10;

    
  }


 boolean isHit(
        float circleX,
        float circleY,
        float radius,
        float rectangleX, // center X
        float rectangleY, // center Y
        float rectangleWidth,
        float rectangleHeight)
  {
      float circleDistanceX = abs(circleX - rectangleX);
      float circleDistanceY = abs(circleY - rectangleY);
   
      if (circleDistanceX > (rectangleWidth/2 + radius)) { return false; }
      if (circleDistanceY > (rectangleHeight/2 + radius)) { return false; }
   
      if (circleDistanceX <= (rectangleWidth/2)) { return true; }
      if (circleDistanceY <= (rectangleHeight/2)) { return true; }
   
      float cornerDistance_sq = pow(circleDistanceX - rectangleWidth/2, 2) +
                           pow(circleDistanceY - rectangleHeight/2, 2);
   
      return (cornerDistance_sq <= pow(radius,2));
  } 
  
}



