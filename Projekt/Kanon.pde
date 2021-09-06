class Kanon {
  float v = 0;
  Skib parentskib;
  float r;
  float vx;
  float x1;
  
  Kanon(Skib pskib, float r_, float vx_, float x_) {
    vx = vx_;
    r = r_;
    parentskib = pskib;
    x1 = x_;
  }

  void display() {
    pushMatrix();
    translate(parentskib.x, parentskib.y);
    rotate(r+v); 
    image(Kanonpic, 0, -50, width/10, height/5);
    popMatrix();
  }

  void turn(float vrate) {
    v=v+vrate;
  }

  void skyd() {
    Kugle k = new Kugle(v, vx, parentskib, x1);
    list1.add(k);
  }
}
