// Pressing Control-R will render this sketch.
int i = 0;

//define variables
int canvasHeight = 400;
int canvasWidth = 800;

//sub blocks
//int numdBlocks = 32;
//int blockHeight = 100;
//int blockWidth = 100;


int prevX = 0;
int prevY = 0;
int currX = 0;
int currY = 0;

color fog = 0;
void setup() {  // this is run once.  
     
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
    
    prevY = (int) random(canvasHeight);
}
void draw() {  // this is run repeatedly. 

  noFill();
  stroke(fog);
  
    int tree = (int)random(-2, 2);    
    //if(tree == 0)
    {
        line(prevX, prevY, prevX, (int)random(5));
    }
    //else
    {
        currX = currX +1;
        currY = (int)prevY+(int)tree;
        line(prevX, prevY, currX, currY);
    }   

    if(currX > canvasWidth)
    {
      currX = 0;
      currY = (int) random(canvasHeight);
      fog = color((int)random(255), (int)random(255),(int)random(255),(int) random(255));
    }

    if(currY > canvasHeight)
    {
      currY = (int) random(canvasHeight);
      println(currY);
    }
    
    prevX = currX;
    prevY = currY;
    
 }

