Particle [] Fireworks;

void setup()
{
  size(500,500);
  Fireworks = new Particle[500];
  for (int i = 0; i < Fireworks.length; i++)
  {
    Fireworks[i] = new NormalParticle();
    Fireworks[0] = new OddballParticle(0,0);
    Fireworks[1] = new JumboParticle();
  }
}

void draw()
{
  background(0);
  for (int i = 0; i < Fireworks.length; i++)
  {
    Fireworks[i].show();
    Fireworks[i].move();
  }
}
 
class NormalParticle implements Particle
{
  double myX, myY, mySpeed, myAngle;
  int myColor;
  NormalParticle()
  {
    myColor = color(#FFFFFF);
    myX = 250;
    myY = 250;
    mySpeed = (Math.random()*8);
    myAngle = (Math.random()*(2*Math.PI));
  }
  public void move()
  {
    myX = myX + (Math.cos(myAngle)*(mySpeed));
    myY = myY + (Math.sin(myAngle)*(mySpeed));
  }
  public void show()
  {
    fill(myColor);
    ellipse((float)myX,(float)myY,15,15);
  }
} 

void mousePressed()
{
  for(int i = 0; i < Fireworks.length; i ++)
  {
    Fireworks[i] = new NormalParticle();
    Fireworks[0] = new OddballParticle(0,0); 
    Fireworks[1] = new JumboParticle();
  }
  for(int i = 0; i < Fireworks.length; i ++)
  {
    Fireworks[i].show();
    Fireworks[i].move();
  }
}

interface Particle
{
  public void show();
  public void move();
}

class OddballParticle implements Particle//uses an interface
{
  int myX2, myY2;
  OddballParticle(int x, int y)
  {
    myX2 = x;
    myY2 = y;
  }
  public void move()
  {
    myX2 = myX2 + 5;
    myY2 = myY2 + 5;
  }
  public void show()
  {
    fill(255,0,0);
    ellipse(myX2,myY2,20,20);
    //rect(myX2,myY2,25,25);
  }
}

class JumboParticle extends NormalParticle//uses inheritance
{
  void show()
  {
    fill(#FFFFFF);
    ellipse((float)myX,(float)myY,70,70);
  }
}


//your code here
//void setup()
//{
	//your code here
//}
//void draw()
//{
	//your code here
//}
//class NormalParticle
//{
	//your code here
//}
//interface Particle
//{
	//your code here
//}
//class OddballParticle //uses an interface
//{
	//your code here
//}
//class JumboParticle //uses inheritance
//{
	//your code here
//}

