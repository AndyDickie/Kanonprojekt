class Kanon {
  float v = 0;
  Skib parentskib;
  float r;
  
  Kanon(Skib pskib, float r_){
   r = r_;
   parentskib = pskib;
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
  
  void skyd(){
    Kugle k = new Kugle(v);
    list1.add(k);
  }
}
