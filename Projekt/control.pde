//spiller 1 kontrol
boolean w, s, a, d, q;


//spiller 2 kontrol
boolean up, down, left, right, m;

void keyPressed() {
  //skib1 op/ned
  if (key == 'w' || key == 'W') {
    w = true;
    s = false;
  }
  if (key == 's'|| key == 'S') {
    w = false;
    s = true;
  }

  //skib1 kanon dreje
  if (key == 'a'|| key == 'A') {
    d = false;
    a = true;
  }
  if (key == 'd'|| key == 'D') {
    d = true;
    a = false;
  }

  if (key == 'q'|| key == 'Q') {
    q = true;
  }

  if (key == 'm'|| key == 'M') {
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
  if (key == 'w'|| key == 'W') {
    w = false;
  }
  if (key == 's'|| key == 'S') {
    s = false;
  }

  if (key == 'a'|| key == 'A') {
    a = false;
  }
  if (key == 'd'|| key == 'D') {
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
  if (key == 'q'|| key == 'Q') {
    q = false;
  }

  if (key == 'm'|| key == 'M') {
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
  if (q) {
    kanon1.skyd();
  }
  if (m) {
    kanon2.skyd();
  }
}
