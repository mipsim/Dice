void setup()
{
	size(400,400);
    noLoop();
}

void draw()
{
    background(192);
    int sum = 0;
    for(int y = 50; y < 350; y = y + 60)
    {
    	Die dieA = new Die(50,y);
   		dieA.show();
   		sum = sum + dieA.value;
   		dieA.roll();
    }
    text("Sum: " + sum, 10, 20);
}

void mousePressed()
{
    redraw();
}

class Die 
{
	int value;
    int myX, myY;
    Die(int x, int y) 
    {
        value = (int)(Math.random()*6)+1;
        myX = x;
        myY = y;
    }
    
    void roll()
    {
    	if ( value == 1)
    	{
    		fill(0);
    		ellipse(myX+25,myY+25,10,10);
    	}

    	if ( value == 2)
    	{
    		fill(0);
    		ellipse(myX+10,myY+10,10,10);
    		ellipse(myX+40,myY+40,10,10);
    	}


    	if ( value == 3)
    	{
    		fill(0);
    		ellipse(myX+10,myY+10,10,10);
    		ellipse(myX+40,myY+40,10,10);
    		ellipse(myX+25,myY+25,10,10);
    	}
    }
    
    void show()
    {
    	noStroke();
        fill(255);
        rect(myX,myY,50,50);
        fill(0);
        text("" + value, myX, myY);
    }
}