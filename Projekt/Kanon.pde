class Kanon{
    float v =0;

  void display(){
 pushMatrix();
  translate(skib1.x,skib1.y);
  rotate(HALF_PI+v); 
  image(Kanonpic,0, -50,width/10,height/5);
  
 popMatrix();
  }
  
  void turn(float vrate){
  v=v+vrate;  
  }
}
