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
}
void keyReleased(){
  if (key == 'w') {
    w = false;
  }
  if (key == 's') {
    s = false;
  }
}

void Controls()
