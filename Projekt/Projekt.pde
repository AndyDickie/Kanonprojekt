//Variable
PImage Kanonpic;
Kanon kanon1;
Skib skib1 = new Skib(50, 0);
Skib skib2 = new Skib(950, 0);

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
  background(255);
  kanon1.display();
  //if (keyPressed == true) {
  //  if (keyCode == LEFT) {
  //    kanon1.turn(0.08);
  //  }
  //  if (keyCode == RIGHT) {
  //    kanon1.turn(-0.08);
  //  }
  //}
  controls();
  skib1.update();
  skib2.update();
}
