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
    image(Skibpic,x,y-75,width/7,height/2.5);
    //Rect er hitboxen
    //rect(x, y, 150, 275);
    textAlign(CENTER);
    textSize(75);
    text(point, x+pointx, 100);
    
  }
  void op() {
    //bevæg skibet op
    y += height/120;
    if (y >= height){
      y = height;
    }
  }

  void ned() {
    //bevæg skibet ned
    y -= height/120;
    if (y <= 0){
      y = 0;
    }
  }
}
