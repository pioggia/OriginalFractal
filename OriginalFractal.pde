int length = 500;
int width = 500;
boolean flash = false;
void setup()
{
	size(length, width);
	background(27, 33, 33);
}
public void draw()
{
	if(flash == false)
	{
		background(27, 33, 33);
		textSize(25);
		textAlign(CENTER);
		stroke(255);
		text("warning, flashing lights \n press a to proceed", length/2, width/2);
	}
	else
	{
		background(27, 33, 33);
		rorschach(length/2-50, width/2-50, 100);
	}
}
public void keyPressed()
{
	if(key == 'a')
	{
		flash = !flash;
	}
}
public void rorschach(int x, int y, int size)
{
	fill((int)(Math.random()*100)+100, (int)(Math.random()*200)+100, (int)(Math.random()*200)+50, (int)(Math.random()*255));
	stroke((int)(Math.random()*100)+100, (int)(Math.random()*200)+100, (int)(Math.random()*200)+50, (int)(Math.random()*255));
	strokeWeight(1);
	rect(x, y, size, size);
	if(size>5)
	{
		rorschach((int)(Math.random()*500), (int)(Math.random()*500), size/(int)(Math.random()*3+1));
		rorschach((int)(Math.random()*500), (int)(Math.random()*500), size/2);
	}
}
