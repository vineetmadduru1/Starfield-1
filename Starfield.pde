Particle[] part = new Particle[50];
Particle[] odd = new Particle[1];
Particle[] jum = new Particle[1];
void setup()
{
	size(300,300);
	for(int i=0;i<part.length;i++)
	{
		part[i]=new NormalParticle();
	}
	for(int a=0;a<odd.length;a++)
	{
		odd[a]=new OddballParticle();
	}
	for(int b=0;b<jum.length;b++)
	{
		jum[b]=new JumboParticle();
	}
	background(0);
}
void draw()
{
	fill(0,0,0,25);
	rect(0,0,300,300);
	for(int i=0;i<part.length;i++)
	{
	part[i].show();
	part[i].move();

	}
	for(int a=0;a<odd.length;a++)
	{
	odd[a].show();
	odd[a].move();

	}
	for(int b=0;b<jum.length;b++)
	{
	jum[b].show();
	jum[b].move();

	}			
}
class NormalParticle implements Particle
{
	
	double myX;
	double myY;
	double speed;
	double angle;
	int myColor;
	NormalParticle()
	{
	myColor=250;
	myX=150;
	myY=150;
	angle=(int)(Math.random()*360)+1;
	speed=2;
	}
	public void move()	
	{
  		myX+=(Math.cos(angle)*speed);
  		myY+=(Math.sin(angle)*speed);
  		angle+=.03;
	}
	public void show()
	{
		noStroke();
		fill(myColor);
		ellipse((float)myX,(float)myY,5,5);
		stroke(0);	
	}
	
}
interface Particle
{
	public void show();
	
	
	public void move();
	
	
}
class OddballParticle implements Particle 
{	
	double myX;
	double myY;
	double speed;
	double angle;
	int myColor;
	OddballParticle()
	{
	myColor=250;
	myX=150;
	myY=150;
	angle=(int)(Math.random()*360)+1;
	speed=2;
	}
	void move()
	{
	myX+=(Math.sin(angle)*speed);
  	myY+=(Math.cos(angle)*speed);
  	angle+=.04;
	}
	void show()
	{
	noStroke();
	fill(myColor);
	ellipse((float)myX,(float)myY,7,7);
	stroke(0);
	}

}
class JumboParticle extends NormalParticle
{
	public void show()
	{
		noStroke();
		fill(myColor);
		ellipse((float)myX,(float)myY,20,20);
		stroke(0);	
	}	
}

