//Variable
PImage Kanonpic;
PImage Skibpic;
PImage Startpic;
ArrayList<Kugle> list1 = new ArrayList<Kugle>();
Skib skib1; 
Skib skib2; 


//Skib skib1 = new Skib(50, 500);
//Skib skib2 = new Skib(950, 500);
Kanon kanon1;
Kanon kanon2;

//Setup
void setup() {
  //size(1000, 1000);
  frameRate(60);
  fullScreen();
  fill(65);
    noStroke();
  Skibpic = loadImage("Skib1.png");
  Kanonpic = loadImage("Kanon4.png");
  imageMode(CENTER);
  rectMode(CENTER);
  skib1 = new Skib(100, height/2, 50);
  skib2 = new Skib(width-100, height/2, -50);
  kanon1 = new Kanon(skib1, HALF_PI, width/75, 130, skib2);
  kanon2 = new Kanon(skib2, -HALF_PI, -width/75, -130, skib1);
}

//Draw
void draw() {
  background(156, 187, 249);
  controls();
  run();
  skib1.display();
  skib2.display();
  kanon1.display();
  kanon2.display();
}
