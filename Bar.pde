class Bar{
  
  float x;
  float y;
  float len;
 
 void firsttt(){
  rectMode(CENTER);
  rect(width/2,y,len,10);
 }
 
 void move(){
  x = mouseX;
 } 
 
 void display(){
  rectMode(CENTER);
  rect(x,y,len,10); 
 }

 Bar(float len){
  this.y = height-10;
  this.len = len;
   
 }
 
}
