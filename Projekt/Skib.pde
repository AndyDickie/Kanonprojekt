public class Skib {
  //x og y koordinat
  float x, y;
  Skib(float x_, float y_) {
    x = x_;
    y = y_;
  }
  void update() {
    //opdater skibets position
    rect(x, y, 100, 100);
    //Skibet skal tegnes som et billede i stedet for rect
  }
  void op() {
    //bevæg skibet op
    y += 4;
  }

  void ned() {
    //bevæg skibet ned
    y -= 4;
  }
}
