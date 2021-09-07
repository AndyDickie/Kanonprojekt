public class Kanon {
  float v = 0;
  //vi bruger composition over inheritance
  Skib parentskib;
  float r;
  float vx;
  float x1;
  boolean ammonution = true;
  int tid;
  Skib targetskib;
  
  Kanon(Skib pskib, float r_, float vx_, float x_, Skib tskib) {
    targetskib = tskib;
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
    if (ammonution){
      Kugle k = new Kugle(v, vx, parentskib, x1, targetskib);
      list1.add(k);
      tid = millis();
      ammonution = false;
    }
    if (millis() >= tid + 750){
      ammonution = true;
      tid = 0;
    }
  }
  }
