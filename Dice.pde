void setup()
{
	size(400,400);
	noLoop();
}

void draw()
{
	int dieVal = 0;
	background(100,0,0);
	for(int x = 10; x < 400; x = x + 60)
	{
		Die die1 = new Die(x,200);
		die1.roll();
		die1.show();
	}
	text("SUM: " + dieVal, 100, 300);
}

void mousePressed()
{
	redraw();
}

class Die
{
	int dieVal;
	int myX, myY;
	Die(int x, int y) //constructor
	{
		roll();
		myX = x;
		myY = y;
	}

	void roll()
	{
		dieVal = ((int)(Math.random()*5)+1);
		if(dieVal == 1)
		{
			dieVal = dieVal + 1;
		}
		if(dieVal == 2)
		{
			dieVal = dieVal + 2;
		}
		if(dieVal == 3)
		{
			dieVal = dieVal + 3;
		}
		if(dieVal == 4)
		{
			dieVal = dieVal + 4;
		}
		if(dieVal == 5)
		{
			dieVal = dieVal + 5;
		}
		if(dieVal == 6)
		{
			dieVal = dieVal + 6;
		}
	}

	void show()
	{
		noStroke();
		fill(255);
		rect(myX,myY,50,50);
		fill(0);
	}
}
