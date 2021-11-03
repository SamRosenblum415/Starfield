Particle[] bob = new Particle[2500]; 
  void setup()
{
  size(800,800);
  for (int i=0;i<bob.length; i++)
    bob[i]= new Particle();
   for(int i = 0; i<50; i++)
    bob[i]= new OddballParticle();
}
void draw()
{
  background(#021C4D);
 for(int i =0; i<bob.length; i++){
  bob[i].show();
  bob[i].move();
 }
}
class Particle{
  double myX, myY, mySpeed, myAngle;
  int myColor;
  Particle()
  {
   myX = 400;
   myY = 400;
   mySpeed = (Math.random()*2)+1;
   myColor = (int)(Math.random()*224)+236;
   myAngle = (Math.random()*(Math.PI*2));
   
   
  }
  void move()
  {
    //if(myX<=800&&myY<=800&&myX>=0&&myY>=0){
    myX= myX + mySpeed*Math.cos(myAngle);
     myY= myY + mySpeed*Math.sin(myAngle);
   // }
     if(myX>=800||myY>=800){
       myX= 400;
     myY=400;
      
    }
    else if(myX<=0||myY<=0){
       myX= 400;
     myY=400;
  }
  }
  
  void show(){
    fill(255, myColor, myColor);
    float size = 10;
    ellipse((float)myX, (float)myY, (float)size, (float)size);
    
    //code
  }
  
}

class OddballParticle extends Particle 
{
  OddballParticle(){
  myX = 400;
   myY = 400;
   mySpeed = (Math.random()*2)+1;
   myColor = 0;
   myAngle = (Math.random()*(Math.PI*2));
  }
  void show(){
    fill(#FA0000);
    rect((float)myX,(float)myY,30.0,30.0);
    
    
  }
}
