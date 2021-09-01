class Kanon{
    float v =0.5;

  void display(){
 pushMatrix();
  translate(100,500);
  rotate(HALF_PI+v); 
  image(Kanonpic,0,-70,width/10,height/5);
  
 popMatrix();
  }
  
  void turn(float vrate){
  v=v+vrate;  
  }
}
