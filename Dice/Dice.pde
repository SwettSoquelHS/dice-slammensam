Die showDie;
void setup(){
  //no loop means that draw is only called once
  //OR if you ever call redraw()
  noLoop();
  showDie = new Die(width/2,height/2);
  
 
}

  

void draw(){
  //your code here
  background(0);
  showDie.show();
  
}

void mousePressed(){
  //No real work for you to do here
  //calling redraw will do the necessary work 
  //to redraw your processing script
  redraw();
}


//Dice: Models a single 6 sided dice cube
//Each instance should randomly assign itself a value from 1 to 6
class Die {
  int x_pos, y_pos;
  int randRoll;
	//variable declarations for your Die instances here
	
	//constructor
	Die(int x, int y){
  x_pos = x;
  y_pos = y;
  
		//variable initializations here
	}
	
	//Simulate a roll of a die
	void roll(){
  //randRoll = (int)(Math.random()*6);
  randRoll = 1;
		//your code here, 
		//should randomly assign a value from 1 to 6
	}
	
	/*
	  Use the randomly assigned roll value to draw the face of a die
	*/
	void show(){
   pushMatrix();
   translate(x_pos, y_pos);
		//your code here
   rect(-50,-50,100,100,7);
   if(randRoll == 1){
     ellipse(0,0,25,25);
  } /*else {
    if(randRoll == 2){
       ellipse(-25,-25,25,25);
       ellipse(25,25,25,25);
     }*/
   
   popMatrix();
	  }
  }
//}
