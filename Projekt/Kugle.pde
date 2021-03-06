class Kugle {
  //Positon og hastighed vektorer
  PVector pos;
  PVector vel; 
  //vektor til at tilpasse punktet til kanonen
  PVector fix;
  //livstid af hver kugle
  int lifespan;
  //x position
  float x;
  Skib parentskib;
  Skib targetskib;

  Kugle(float v, float vx, Skib pskib, float x_, Skib tskib) {
    x = x_;
    parentskib = pskib;
    lifespan = 200;
    fix = new PVector (x, 0);
    fix.rotate(v);
    pos = new PVector(parentskib.x, parentskib.y);
    pos.add(fix);
    vel = new PVector(vx, 0);
    vel.rotate(v);
    targetskib = tskib;
  }

  //opdater positionen af kuglerne
  void update() {
    pos.add(vel);
    lifespan -= 1;
  }

  //Tegn kuglerne
  void display() {
    ellipse(pos.x, pos.y, 25, 25);
    fill(65);
    noStroke();
  }

  //samling af funktionerne :)
  void run() {
    update();
    display();
  }


  //Tjek hvornår skudene skal fjernes
  boolean isDead() {
    if (lifespan < 0) {
      return true;
    } else {
      return false;
    }
  }

  boolean hitBox() {
    float vx = targetskib.x-75;
    float hx = targetskib.x+75;
    float ty = targetskib.y+137.5;
    float by = targetskib.y-137.5;
    if (pos.x > vx && pos.x < hx && pos.y > by && pos.y < ty) {   
      return true;
    } else {
      return false;
    }
  }
}

//Loopet tjekker lifespan for hver genstand i listen, og fjerner de forældede kugler
void run() {
  for (int i = list1.size()-1; i >= 0; i--) {
    Kugle p = list1.get(i);
    p.run();

    if (p.isDead()) {
      list1.remove(i);
    }
    if (p.hitBox()) {
      list1.remove(i);
      p.parentskib.point += 1;
    }
  }
}
