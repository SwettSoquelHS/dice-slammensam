Die showDie1;
Die showDie2;
Die showDie3;
Die showDie4;
Die showDie5;
Die showDie6;
Die showDie7;
Die showDie8;
Die showDie9;
Die showDie10;
Die showDie11;
Die showDie12;
Die showDie13;
Die showDie14;
Die showDie15;
Die showDie16;
Die showDie17;
Die showDie18;
Die showDie19;
Die showDie20;
Die showDie21;
Die showDie22;
Die showDie23;
Die showDie24;
Die showDie25;
void setup() {
  //no loop means that draw is only called once
  //OR if you ever call redraw()
  noLoop();
  pushMatrix();
  showDie1 = new Die(50,50);
  showDie2 = new Die(150, 50);
  showDie3 = new Die(250, 50);
  showDie4 = new Die(350, 50);
  showDie5 = new Die(450, 50);
  showDie6 = new Die(50, 150);
  showDie7 = new Die(150, 150);
  showDie8 = new Die(250, 150);
  showDie9 = new Die(350, 150);
  popMatrix();
  
  size(500,500);
}



void draw() {
  //your code here
  background(0);
  showDie1.show();
  showDie2.show();
  showDie3.show();
  showDie4.show();
  showDie5.show();
  showDie6.show();
  showDie7.show();
  showDie8.show();
  showDie9.show();
}

void mousePressed() {
  //No real work for you to do here
  //calling redraw will do the necessary work 
  //to redraw your processing script
  showDie1.roll();
  showDie2.roll();
  showDie3.roll();
  showDie4.roll();
  showDie5.roll();
  showDie6.roll();
  showDie7.roll();
  showDie8.roll();
  showDie9.roll();
  redraw();
}


//Dice: Models a single 6 sided dice cube
//Each instance should randomly assign itself a value from 1 to 6
class Die {
  int x_pos, y_pos;
  int randRoll;
  //variable declarations for your Die instances here

  //constructor
  Die(int x, int y) {
    x_pos = x;
    y_pos = y;
    roll();
    //variable initializations here
  }

  //Simulate a roll of a die
  void roll() {
    randRoll = (int)(Math.random()*6) + 1;
    
    //your code here, 
    //should randomly assign a value from 1 to 6
  }

  /*
	  Use the randomly assigned roll value to draw the face of a die
   	*/
  void show() {
    pushMatrix();
    translate(x_pos, y_pos);
    //your code here
    fill(255);
    rect(-50, -50, 100, 100, 7);
    println("randRoll =" + randRoll);
    if (randRoll == 1) {
      fill(0);
      ellipse(0, 0, 25, 25);
    } else {
      if (randRoll == 2) {
        fill(0);
        ellipse(-25, -25, 25, 25);
        ellipse(25, 25, 25, 25);
      } else {
        if (randRoll == 3) {
          fill(0);
          ellipse(-25, -25, 25, 25);
          ellipse(0, 0, 25, 25);
          ellipse(25, 25, 25, 25);
        } else {
          if (randRoll == 4) {
            fill(0);
            ellipse(-25, -25, 25, 25);
            ellipse(-25, 25, 25, 25);
            ellipse(25, -25, 25, 25);
            ellipse(25, 25, 25, 25);
          } else {
            if (randRoll == 5) {
              fill(0);
              ellipse(-25, -25, 25, 25);
              ellipse(-25, 25, 25, 25);
              ellipse(25, -25, 25, 25);
              ellipse(25, 25, 25, 25);
              ellipse(0, 0, 25, 25);
            } else {
              if (randRoll == 6) {
                fill(0);
                ellipse(-25, -25, 20, 20);
                ellipse(-25, 25, 20, 20);
                ellipse(25, -25, 20, 20);
                ellipse(25, 25, 20, 20);
                ellipse(25,0,20,20);
                ellipse(-25,0,20,20);
              }
            }
          }          
        }
      }
    }
    popMatrix();
  }
}
