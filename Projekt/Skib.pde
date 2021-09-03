public class Skib {
  float x, y;
  Skib(float x_, float y_) {
    x = x_;
    y = y_;
  }
  void update() {
    //opdater skibets position
    rect(x, y, 100, 100);
  }
  void op() {
    y += 4;
  }

  void ned() {
    y -= 4;
  }
}
