//Game Status
int status; 
final int GAME_START   = 0;
final int GAME_PLAYING = 1;
final int GAME_FIRST   = 2;
final int GAME_PAUSE   = 3;
final int GAME_WIN     = 4;
final int GAME_LOSE    = 5;

Ball myBall;
Bar myBar;
Brick myBrick;

void setup(){
  size(640,480);
  myBall = new Ball(320,460);
  myBar = new Bar(80);
  myBrick = new Brick();
}


void draw(){
 background(0); 
 
 switch(status){
 case GAME_START:
   fill(230, 74, 96);
   textSize(60);
   text("PONG GAME",width/4,210);
   textSize(20);
   text("Press ENTER to Start", 220, 270);
   break;
 
 case GAME_PLAYING:
   background(0);
   drawLife();
   myBrick.move();
   myBrick.display();   
   myBall.move();
   myBall.display(); 
   myBar.move();
   myBar.display();
   myBall.isHit(myBall.x,myBall.y,10,myBar.x,myBar.y,myBar.len,10);
   break;
   
 case GAME_FIRST:
   drawLife();
   myBrick.move();
   myBrick.display();
   myBall.firsttt();
   myBar.firsttt();
   break; 
   
 case GAME_WIN:
   fill(230, 74, 96);
   textSize(40);
   text("WINNER",245,210);
   break;
 
 case GAME_LOSE:
   fill(230, 74, 96);
   textSize(40);
   text("YOU LOSE",245,210);
   break;
 }
}

void drawLife() {
  fill(230, 74, 96);
  text("LIFE:", 36, 455);
  for(int i=0; i<3 ;i++){
  ellipse(90+25*i,450,15,15);
  }
}

void statusCtrl(){
  if(key == ENTER){
    switch(status){
       case GAME_START:
         status = GAME_FIRST;
         break;

        case GAME_WIN:
          status = GAME_WIN;
          break;
    }
  }
}

void mousePressed(){
   if(mouseButton==RIGHT){
    switch(status){
      case GAME_FIRST:
        status = GAME_PLAYING;
        break;
    }
   } 
}
  
void keyPressed(){
   statusCtrl();
}
