void setup()
{
	size(750,650);
    noLoop();
    stroke(50);
    textSize(25);
    textAlign(CENTER);
}

void draw()
{
    background(150,0,0);
    int sum = 0;
    for(int y = 35; y < 600; y += 50)
    {
    	for(int x = 24; x < 700; x += 50)
    	{
    		Die dieA = new Die(x,y);
   			dieA.show();
   			sum = sum + dieA.value;
   			dieA.roll();
    	}			
    }
    fill(255);
    text("TOTAL = " + sum, 375, 25);
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
    		fill(255,0,0);
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
    	if ( value == 4)
    	{
    		fill(0);
    		ellipse(myX+10,myY+10,10,10);
    		ellipse(myX+10,myY+40,10,10);
    		ellipse(myX+40,myY+10,10,10);
    		ellipse(myX+40,myY+40,10,10);
    	}
    	if ( value == 5)
    	{
    		fill(0);
    		ellipse(myX+10,myY+10,10,10);
    		ellipse(myX+10,myY+40,10,10);
    		ellipse(myX+40,myY+10,10,10);
    		ellipse(myX+40,myY+40,10,10);
    		ellipse(myX+25,myY+25,10,10);
    	}
    	if ( value == 6)
    	{
    		fill(0);
    		ellipse(myX+10,myY+10,10,10);
    		ellipse(myX+10,myY+25,10,10);
    		ellipse(myX+10,myY+40,10,10);
    		ellipse(myX+40,myY+10,10,10);
    		ellipse(myX+40,myY+25,10,10);
    		ellipse(myX+40,myY+40,10,10);
    	}
    }
    
    void show()
    {
        fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
        rect(myX,myY,50,50);
        fill(0);
    }
}