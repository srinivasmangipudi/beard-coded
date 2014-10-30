// Pressing Control-R will render this sketch.
int i = 0;

//define variables
int canvasHeight = 400;
int canvasWidth = 800;
int prevX = 0;
int prevY = 0;
int currX = 0;
int currY = 0;
int next = 0;
color fog = 0;

// this is run once
void setup() 
{      
    // set the background color
    background(255);
     
    // canvas size (Variable aren't evaluated. Integers only, please.)
    size(800, 400);
       
    // smooth edges
    smooth();
    fog = color((int)random(255), (int)random(255),(int)random(255),(int) random(255));
    
    colorMode(HSB, 360,100,100);
    // limit the number of frames per second
    frameRate(30);     
    
    // randomize the starting height of the landscape
    prevY = (int) random(canvasHeight);
}

// this is run repeatedly.
void draw() 
{   

  noFill();
  stroke(fog);
    
    int tree = (int)random(-2, 2);    
    line(prevX, prevY, prevX, 0);
    currX = currX +1;
    currY = (int)prevY+(int)tree;
    line(prevX, prevY, currX, currY);
    
    // if the landscape has reached the end width, start again from left x=0
    if(currX > canvasWidth)
    {
      currX = 0;
      currY = (int) random(canvasHeight);
      fog = color((int)random(255), (int)random(255),(int)random(255),(int) random(255));
    }
    
    //if the landscape falls below y=height, assign a random height to startover
    if(currY > canvasHeight)
    {
      currY = (int) random(canvasHeight);
    }
    
    prevX = currX;
    prevY = currY;
 }
