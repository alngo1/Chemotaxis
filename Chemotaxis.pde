  //declare bacteria variables here

 Bacteria [] bois; 
 void setup()   
 {     
 	//initialize bacteria variables here
 	size(500, 500);
 	bois = new Bacteria[100];
	for(int i = 0; i < bois.length; i++)
	{
		bois [i] = new Bacteria();
	}
 }   
 void draw()   
 {    
 	//move and show the bacteria 
 	background(#C4C4C4); 
	for(int i = 0; i < bois.length; i++)
	{
               /* if(mousePressed == true)
                {
bois[i]myX = 0;

                  boismyY = 0;
                }*/
		fill(bois[i].myColor);
		bois[i].show();
		bois[i].move();
	}  
 }  
 class Bacteria    
 {     
 	int myX, myY, myColor;
 	Bacteria()
 	{
 		myX = (int)(Math.random()*250)+1;
 		myY = (int)(Math.random()*250)+1;
 		int randomGray = 110;
 		myColor = color(randomGray, randomGray, randomGray);
 	}
 	void move()
 	{
 		if(mouseX > 250 && mouseY > 250)
 		{
 			myX = myX + (int)(Math.random()*5);
 	                myY = myY + (int)(Math.random()*5);
 		}
                else if (mouseX < 250 && mouseY < 250) 
                {
 			myX = myX - (int)(Math.random()*5);
                        myY = myY - (int)(Math.random()*5);
 		}
 		else if(mouseY > 250 && mouseX < 250)
 		{
                        myX = myX - (int)(Math.random()*5);
 			myY = myY + (int)(Math.random()*5);
 		}
                else if(mouseY < 250 && mouseX > 250)
 		{
                        myX = myX + (int)(Math.random()*5);
 			myY = myY - (int)(Math.random()*5);
                }
 	}
 	void show()
 	{
	    ellipse(myX, myY, 50, 50);
 	}
 }    
