//spiller 1 kontrol
boolean w, s, a, d;

//spiller 2 kontrol
boolean up, down, left, right;

void keyPressed(){
  if (key == 'w') {
    w = true;
    s = false;
  }
  if (key == 's') {
    w = false;
    s = true;
  }
  
  
   if (key == 'a') {
    d = false;
    a = true;
  }
   if (key == 'd') {
    d = true;
    a = false;
  }
  if (keyCode == UP){
   up = true;
   down = false;
  }
  
  if (keyCode == DOWN){
   up = false;
   down = true;
  }
  
   if (keyCode == LEFT){
   left = true;
   right = false;
   }
   
   if (keyCode == RIGHT){
   left = false;
   right = true;
   }
}

void keyReleased(){
  if (key == 'w') {
    w = false;
  }
  if (key == 's') {
    s = false;
  }
  
   if (key == 'a') {
    a = false;
  }
   if (key == 'd') {
    d = false;
  }
  if (keyCode == UP){
   up = false;
  }
  
  if (keyCode == DOWN){
   down = false;
  }
  if (keyCode == LEFT){
   left = false;
   }
   
   if (keyCode == RIGHT){
   right = false;
   }
}

void controls(){
  if (s){
   skib1.op(); 
  }
  if (w){
   skib1.ned();
  }
  if (a){
    kanon1.turn(-0.04);
  }
  if (d){
    kanon1.turn(+0.04);
  }
  if (down){
    skib2.op();
  }
  
  if (up){
   skib2.ned();
  }
  
  if (right){
    kanon2.turn(+0.04);
  }
  if (left){
    kanon2.turn(-0.04);
  }
}
