//Variable
PImage Kanonpic;
ArrayList<Kugle> list1 = new ArrayList<Kugle>();
Skib skib1 = new Skib(50, 500);
Skib skib2 = new Skib(950, 500);
Kanon kanon1 = new Kanon(skib1, HALF_PI, 10, 130);
Kanon kanon2 = new Kanon(skib2, -HALF_PI, -10, -130);

//Setup
void setup() {
  size(1000, 1000);
  frameRate(60);
  //fullScreen();
  Kanonpic = loadImage("Kanon2.png");
  imageMode(CENTER);
  rectMode(CENTER);
}

//Draw
void draw() {
  background(156, 187, 249);
  controls();
  run();
  skib1.update();
  skib2.update();
  kanon1.display();
  kanon2.display();  
}
