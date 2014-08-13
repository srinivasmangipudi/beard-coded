// Pressing Control-R will render this sketch.
int i = 0;

//define variables
int canvasHeight = 400;
int canvasWidth = 800;

//sub blocks
int numdBlocks = 32;
int blockHeight = 100;
int blockWidth = 100;

int joinType = 0; 

//instantiate the dBlocks    
dBlock[] dBlocks = new dBlock[numdBlocks];

PFont f;                          // STEP 2 Declare PFont variable

color[] colours = new color[5];

void setup() {  // this is run once.  
     
    // set the background color
    background(255);
     
    // canvas size (Variable aren't evaluated. Integers only, please.)
    size(800, 400);
       
    // smooth edges
    smooth();
    
    f = createFont("Arial",28,true); // STEP 3 Create Font
    
    colours[0] = color(255, 0, 0); //red
    colours[1] = color(255, 239, 0); //yellow
    colours[2] = color(0, 21, 255); //blue
    colours[3] = color(255, 255, 255); //white
    colours[4] = color(0, 0, 0); //black
    
    
    int xRot = canvasWidth/blockWidth;
    int yRot = canvasHeight/blockHeight;
    int blockCounter = 0;
    
    for(int j=1; j<=yRot; j++)
    {
      for(int i=1; i<=xRot; i++)
      {
        dBlocks[blockCounter] = new dBlock(blockCounter, i, j);
        blockCounter++;
      }
    }

    // limit the number of frames per second
    frameRate(10);     
}
void draw() {  // this is run repeatedly. 
  
   for(int i=0; i<numdBlocks; i++)
   {
     dBlock dthis = (dBlock)dBlocks[i];
     dthis.update();
     //println(dthis.dId);
   }  
}

class dBlock 
{   
  int dId;  
  int dx, dy, nx, ny;
  int prevX, prevY;
  color c;
  
  //autodraw parameters
  int masterCount;
  int count;
        
  dBlock (int id, int x, int y) 
  {  
    dId = id;
    
    //figure out quadrant
    dx = (x - 1) * 100;
    dy = (y - 1) * 100;
    
    nx = x * 100;
    ny = y * 100;
    
    //randomize parameters
    prevX = (int)random(dx, nx);
    prevY = (int)random(dy, ny);
   
    masterCount = (int)random(500); 
    count = 0;
    
    c = colours[(int)random(5)];
  } 
  
  void update()
  {
    //fill(255);
    //rect(dx, dy, nx, ny); 
   
    if(count >= masterCount)
    {
        count = 0;
        //background(255);
        //background(random(255));        
        masterCount = (int)random(500);
        
        c = colours[(int)random(5)];
        fill(c);
        noStroke();
        rect(dx, dy, nx, ny); 
    }
    count++;
 
    
    String s = String.valueOf(count);
 
        fill(c);
        noStroke();
        rect(dx, dy, nx, ny); 
    
    fill(255);
    textSize(32);
    text(s, dx+50, dy+50, 70, 70);

 
    int currX = (int)random(dx, nx);
    int currY = (int)random(dy, ny);
    
    // set the color
    strokeWeight(random(1));
    //stroke(random(255), random(255), random(255), 100);
    stroke(random(255));
    
    //noFill();

    prevX = currX;
    prevY = currY;

  } 
} 
