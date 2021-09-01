//Variable
PImage Kanonpic;
Kanon kanon1;
//Setup
void setup(){
  size(1000,1000);
  Kanonpic = loadImage("Kanon.png");
  kanon1 = new Kanon();
}

//Draw
void draw(){
  kanon1.display();
}
