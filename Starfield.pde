Particle[] normParticles = new NormalParticle[300];
Particle[] oddParticles = new OddballParticle[2];
Particle[] jumParticles = new JumboParticle[1];
void setup()
{
  size(1000,1000);
   for(int a = 0; a < normParticles.length; a++) {
      normParticles[a] = new NormalParticle();
    }
   for(int  b= 0; b < oddParticles.length; b++) {
      oddParticles[b] = new OddballParticle();
    }
   for(int c = 0; c < jumParticles.length; c++) {
      jumParticles[c] = new JumboParticle();
    }
    background(0);
}
void draw()
{   
    fill(0,0,0,25);
    rect(0,0,1000,1000);
    for(int a= 0; a<normParticles.length; a++)
    {
      normParticles[a].show();
      normParticles[a].move();
    }
    for(int b= 0; b<oddParticles.length; b++)
    {
      oddParticles[b].show();
      oddParticles[b].move();
    }
    for(int c= 0; c<jumParticles.length; c++)
    {
      jumParticles[c].show();
      jumParticles[c].move();
    }
}
class NormalParticle implements Particle
{
  int shapeColor; 
  double dTheta = 2.03;
  double dSpeed = 8.25;
  double dX = 320;
  double dY = 240;
  NormalParticle(){
    shapeColor =(int)(Math.random()*250)+1;
    dX = 500;
    dY =500;
    dTheta = (int)(Math.random()*360)+1;
    dSpeed = 20;
  }
  
  void move(){
    dTheta+=.07;
    dX += Math.cos(dTheta)*dSpeed;
    dY += Math.sin(dTheta)*dSpeed;
  }
  void show() {
    fill((int)(Math.random()*250),(int)(Math.random()*250),(int)(Math.random()*250));
    ellipse((float)dX,(float)dY,5,5);
  }
}
interface Particle
{
  public void show();
  public void move();
}
class OddballParticle implements Particle
{
  double dX;
  double dY;
  double dSpeed;
  double dTheta;
  int shapeColor;
  OddballParticle()
  {
    background(0);
  shapeColor=250;
  dX=500;
  dY=500;
  dTheta=(int)(Math.random()*360)+1;
  dSpeed=10;
  }
  void move()
  {
    dTheta+= .05;
    dX+=(Math.sin(dTheta)*dSpeed);
    dY+=(Math.cos(dTheta)*dSpeed);
  }
  void show()
  {
    fill(250);
  ellipse((float)dX,(float)dY,25,25);
}
}
class JumboParticle extends NormalParticle 
{
  double dX;
  double dY;
  double dSpeed;
  double dTheta;
  int shapeColor;
  public void show()
  {
    fill(shapeColor);
    ellipse((float)dX,(float)dY,50,50);
  }
  public void move(){
    dTheta+= .05;
    dX+=(Math.sin(dTheta)*dSpeed);
    dY+=(Math.cos(dTheta)*dSpeed);
  }  
}
