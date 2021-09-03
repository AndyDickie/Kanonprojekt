class Kugle {
  PVector pos;
  PVector vel; 
  PVector fix;
  int lifespan;
  float x;
  Skib parentskib;

  Kugle(float v, float vx, Skib pskib, float x_) {
    x = x_;
    parentskib = pskib;
    lifespan = 300;
    fix = new PVector (x, 0);
    fix.rotate(v);
    pos = new PVector(parentskib.x, parentskib.y);
    pos.add(fix);
    vel = new PVector(vx, 0);
    vel.rotate(v);
  }
  void update() {
    pos.add(vel);
    lifespan -= 1;
  }

  void display() {
    ellipse(pos.x, pos.y, 25, 25);
  }

  void run() {
    update();
    display();
  }

  boolean isDead() {
    if (lifespan < 0) {
      return true;
    } else {
      return false;
    }
  }
}

void run() {
  for (int i = list1.size()-1; i >= 0; i--) {
    Kugle p = list1.get(i);
    p.display();
    p.update();
    if (p.isDead()) {
      list1.remove(i);
    }
  }
}
