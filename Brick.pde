class Brick{
  int brickWidth = 30;
  int brickHeight = 30;
  
  
void move(){
  
}
  
 void display(){
  fill(255,60,58);
  int ix = 140, iy =40;
  for (int col = 0; col < 11; col++){
    for (int row =0; row < 5; row++){
      int x = ix + col * brickWidth*6/5;
      int y = iy + row * brickHeight*6/5;
      if ( row % 2 == 0){ 
        rect(x,y,brickWidth, brickHeight);
      }else{
        rect(x,y,brickWidth, brickHeight);
      }
    }
  } 
 } 
  
  
  
  
}


