//spiller 1 kontrol
boolean w, s;

//spiller 2 kontrol
boolean up, down;

void keyPressed(){
  if (key == 'w') {
    w = true;
    s = false;
  }
  if (key == 's') {
    w = false;
    s = true;
  }
  
  if (keyCode == UP){
   up = true;
   down = false;
  }
  
  if (keyCode == DOWN){
   up = false;
   down = true;
  }
}
void keyReleased(){
  if (key == 'w') {
    w = false;
  }
  if (key == 's') {
    s = false;
  }
  if (keyCode == UP){
   up = false;
  }
  
  if (keyCode == DOWN){
   down = false;
  }
}

void controls(){
  if (w){
    //mangler skib 1
   skib1.op(); 
  }
  if (s){
   //mangler skib1
   skib1.ned();
  }
  if (up){
    //skib 2 mangler
    skib2.op();
  }
  
  if (down){
   //skib 2 mangler
   skib2.ned();
  }
}
