int length = 300;
int width = 300;
public void setup()
{
  size(length, width);
  background(95, 240, 237);
}
public void draw()
{
  background(95, 240, 237);
  rorschach(length/10, width-width/10, width/10*8);
}
public void rorschach(int x, int y, int radii) 
{
  if(radii >= 20)
  {
  	noFill();
  	strokeWeight(1);
  	stroke(250, 131, 46);
    rorschach(x, y, radii/2);
    rorschach(x+(int)Math.random()*30, y-(int)Math.random()*30, radii+(int)Math.random()*20-10);
    rorschach(x+(int)Math.random()*100, y-(int)Math.random()*100, radii+(int)Math.random()*30);
  }
  else 
  {
    rect(x, y, radii, radii);
  }
}
