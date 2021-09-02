class Kanon1{
    float v =0;

  void display(){
 pushMatrix();
  translate(skib2.x,skib2.y);
  rotate(-HALF_PI+v); 
  image(Kanonpic,0, -50,width/10,height/5);
 popMatrix();
  }
  
  void turn(float vrate){
  v=v+vrate;  
  }
}
