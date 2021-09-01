//Variable
PImage Kanonpic;
Kanon kanon1;

//Setup
void setup() {
  size(1000, 1000);
  Kanonpic = loadImage("Kanon.png");
  kanon1 = new Kanon();
  imageMode(CENTER);
  background(0);
}

//Draw
void draw() {
  kanon1.display();
  if (keyPressed == true) {
    if (keyCode == LEFT) {
      kanon1.turn(0.08);
    }
    if (keyCode == RIGHT) {
      kanon1.turn(-0.08);
    }
  }
}
