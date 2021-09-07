public class Skib {
  //x og y koordinat
  float x, y;
  int point;
  float pointx;
  Skib(float x_, float y_, float pointx_) {
    x = x_;
    y = y_;
    pointx = pointx_;
  }
  void display() {
    //opdater skibets position
    image(Skibpic,x,y-75,width/6,height/2.5);
    rect(x, y, 150, 275);
    //Skibet skal tegnes som et billede i stedet for rect
    textAlign(CENTER);
    textSize(75);
    text(point, x+pointx, 100);
    
  }
  void op() {
    //bevæg skibet op
    y += 6;
  }

  void ned() {
    //bevæg skibet ned
    y -= 6;
  }
}
