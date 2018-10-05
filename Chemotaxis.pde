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
 		myX = (int)(Math.random()*100)+1;
 		myY = (int)(Math.random()*100)+1;
 		int rCR = (int)(Math.random()*256);
		int rCB = (int)(Math.random()*256);
		int rCG = (int)(Math.random()*256);
 		myColor = color(rCR, rCB, rCG);
 	}
 	void move()
 	{
    	myX = myX + (int)(Math.random()*7)-3;
    	myY = myY + (int)(Math.random()*7)-3;
 	}
 	void show()
 	{
	    ellipse(myX, myY, 30, 30);
 	}
 }    