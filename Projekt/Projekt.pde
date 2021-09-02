//Variable
PImage Kanonpic;
Kanon kanon1;
Skib skib1 = new Skib(50, 0);
Skib skib2 = new Skib(950, 0);

//Setup
void setup() {
  size(1000, 1000);
  //fullScreen();
  Kanonpic = loadImage("Kanon2.png");
  kanon1 = new Kanon();
  imageMode(CENTER);
  rectMode(CENTER);
  background(0);
  
  
}

//Draw
void draw() {
  background(0);
  
  if (keyPressed == true) {
    if (keyCode == LEFT) {
      kanon1.turn(0.04);
    }
    if (keyCode == RIGHT) {
      kanon1.turn(-0.04);
    }
  }
  controls();
  skib1.update();
  skib2.update();
  kanon1.display();
}
