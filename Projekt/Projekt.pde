//Variable
PImage Kanonpic;
Skib skib1 = new Skib(50, 500);
Skib skib2 = new Skib(950, 500);
Kanon kanon1 = new Kanon(skib1, HALF_PI);
Kanon kanon2 = new Kanon(skib2, -HALF_PI);

//Setup
void setup() {
  size(1000, 1000);
  //fullScreen();
  Kanonpic = loadImage("Kanon2.png");
  imageMode(CENTER);
  rectMode(CENTER);
  background(0);
  
  
}

//Draw
void draw() {
  background(0);
  
  if (keyPressed == true) {
    if (keyCode == LEFT) {
      kanon1.turn(-0.04);
    }
    if (keyCode == RIGHT) {
      kanon1.turn(+0.04);
    }
  }
  controls();
  skib1.update();
  skib2.update();
  kanon1.display();
  kanon2.display();
}
