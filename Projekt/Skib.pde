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
    rect(x, y, 125, 250);
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
