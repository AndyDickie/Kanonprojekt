//spiller 1 kontrol
boolean w, s, a, d, q;


//spiller 2 kontrol
boolean up, down, left, right, m;

void keyPressed() {
  //skib1 op/ned
  if (key == 'w') {
    w = true;
    s = false;
  }
  if (key == 's') {
    w = false;
    s = true;
  }

  //skib1 kanon dreje
  if (key == 'a') {
    d = false;
    a = true;
  }
  if (key == 'd') {
    d = true;
    a = false;
  }

  if (key == 'q') {
    q = true;
  }

  if (key == 'm') {
    m = true;
  }

  //skib2
  if (keyCode == UP) {
    up = true;
    down = false;
  }

  if (keyCode == DOWN) {
    up = false;
    down = true;
  }

  if (keyCode == LEFT) {
    left = true;
    right = false;
  }

  if (keyCode == RIGHT) {
    left = false;
    right = true;
  }
}

void keyReleased() {
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
  if (keyCode == UP) {
    up = false;
  }

  if (keyCode == DOWN) {
    down = false;
  }
  if (keyCode == LEFT) {
    left = false;
  }

  if (keyCode == RIGHT) {
    right = false;
  }
    if (key == 'q') {
    q = false;
  }

  if (key == 'm') {
    m = false;
  }
}

void controls() {
  if (s) {
    skib1.op();
  }
  if (w) {
    skib1.ned();
  }
  if (a) {
    kanon1.turn(-0.04);
  }
  if (d) {
    kanon1.turn(+0.04);
  }
  if (down) {
    skib2.op();
  }

  if (up) {
    skib2.ned();
  }

  if (right) {
    kanon2.turn(+0.04);
  }
  if (left) {
    kanon2.turn(-0.04);
  }
  if (q){
    kanon1.skyd();
  }
  if (m){
   kanon2.skyd(); 
  }
}
