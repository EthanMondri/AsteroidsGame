Spaceship ship;
Star[] stars;
boolean UPisPressed, DOWNisPressed, LEFTisPressed, RIGHTisPressed;

public void setup()
{
  size(800, 800);
  background(0);
  
  ship = new Spaceship();
  stars = new Star[(int)(Math.random()*20)+10];
  
  for (int i = 0; i < stars.length; i++)
  {
    stars[i] = new Star(Math.random()*width, Math.random()*height, (int)(Math.random()*5)+5);
  }
}

public void draw()
{
  clear();
  ship.move();
  ship.show();
  for (Star s : stars)
  {
    s.show();
  }
  if (UPisPressed)
  {
    ship.accelerate(0.25);
  }
  if (DOWNisPressed)
  {
    ship.accelerate(-0.25);
  }
  if (RIGHTisPressed)
  {
    ship.turn(5);
  }
  if (LEFTisPressed)
  {
    ship.turn(-5);
  }
}

public void keyPressed()
{
  if (key == CODED)
  {
    if (keyCode == UP)
    {
      UPisPressed = true;
    }
    if (keyCode == DOWN)
    {
      DOWNisPressed = true;
    }
    if (keyCode == RIGHT)
    {
      RIGHTisPressed = true;
    }
    if (keyCode == LEFT)
    {
      LEFTisPressed = true;
    }
  }
  if (key == 'h')
  {
    ship.setX(Math.random()*width);
    ship.setY(Math.random()*height);
    ship.setDir(Math.random()*360);
    ship.setXSp(0);
    ship.setYSp(0);
  }
}
public void keyReleased()
{
  if (key == CODED)
  {
    if (keyCode == UP)
    {
      UPisPressed = false;
    }
    if (keyCode == DOWN)
    {
      DOWNisPressed = false;
    }
    if (keyCode == RIGHT)
    {
      RIGHTisPressed = false;
    }
    if (keyCode == LEFT)
    {
      LEFTisPressed = false;
    }
  }
}
