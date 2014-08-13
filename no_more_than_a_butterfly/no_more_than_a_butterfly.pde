// Pressing Control-R will render this sketch.
int i = 0;

//define variables
int canvasHeight = 400;
int canvasWidth = 800;

//sub blocks
int numdBlocks = 32;
int blockHeight = 100;
int blockWidth = 100;


//autodraw parameters
int masterCount = 20;
int count = 0;
int prevX = 0;
int prevY = 0;
int currX = 0;
int currY = 0;

int joinType = 0; 

//instantiate the dBlocks    
dBlock[] dBlocks = new dBlock[numdBlocks];

PFont f;                          // STEP 2 Declare PFont variable
  

void setup() {  // this is run once.  
     
    // set the background color
    background(255);
     
    // canvas size (Variable aren't evaluated. Integers only, please.)
    size(800, 400);
       
    // smooth edges
    smooth();
    
    f = createFont("Arial",16,true); // STEP 3 Create Font
    
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
    frameRate(18);     
}
void draw() {  // this is run repeatedly. 
    stroke(0);
  
   for(int i=0; i<numdBlocks; i++)
   {
     dBlock dthis = (dBlock)dBlocks[i];
     dthis.update();
     //println(dthis.dId);
   }
  
   //println(masterCount);
   /*if(count == masterCount)
    {
        count = 0;
        background(255);
        //background(random(255));        
        masterCount = (int)random(50);
    }
    count++;
  
    // set the color
    strokeWeight(random(15));
    //stroke(random(255), random(255), random(255), 100);
    stroke(random(255));
    
    currX = random(0, canvasWidth);
    currY = random(0, canvasHeight);
    
    joinType = (int)random(2);
    //println(joinType);
    //String s = joinType;

    //text(s, 15, 20, 70, 70);

    if(joinType == 0)
    {
        //
        curve(prevX, prevY, random(canvasWidth), random(canvasHeight), 
              currX, currY, random(canvasWidth), random(canvasHeight));
    }
    else if(joinType == 1)
    {
        line(prevX, prevY, currX, currY);
    }
    prevX = currX;
    prevY = currY;*/
}

class dBlock 
{   
  int dId;  
  int dx, dy, nx, ny;
  
  int prevX, prevY;
        
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
    prevY = (int)random(dy, ny);; 

  } 
  
  void update()
  {
    fill(255);
    rect(dx, dy, nx, ny); 

    int currX = (int)random(dx, nx);
    int currY = (int)random(dy, ny);
    
    //stroke(random(255), random(255), random(255), 100);
    line(prevX, prevY, currX, currY);
    float length = sqrt(abs((prevX-currX))+abs((prevY-currY)));
    
    textFont(f,16);                 // STEP 4 Specify font to be used
    fill(random(255), random(255), random(255));
  
    //String s = str(prevX) + ":" + str(prevY);
    //String s = String.format("%.1f", length);
    String s = nf(length, 1, 1);

    //String s= str(round(length));
    //int slope = Math.abs((currY - prevY) / (currX - prevX));
    
    text(s, prevX, prevY);

    prevX = currX;
    prevY = currY;

  } 
} 
