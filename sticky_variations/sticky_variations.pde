// Pressing Control-R will render this sketch.
int i = 0;

//define variables
int canvasHeight = 400;
int canvasWidth = 400;

//sub blocks
int numdBlocks = 64;
int blockHeight = 50;
int blockWidth = 50;

int gCount=0;

//instantiate the dBlocks    
dBlock[] dBlocks = new dBlock[numdBlocks];

PFont f;                          // STEP 2 Declare PFont variable
  

void setup() {  // this is run once.  
     
    // set the background color
    background(255);
     
    // canvas size (Variable aren't evaluated. Integers only, please.)
    size(400, 400);
       
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
    frameRate(3);  
    //colorMode(HSB, 100);   
}
void draw() {  // this is run repeatedly. 
   
   dBlock dthis = (dBlock)dBlocks[gCount];
   dthis.update();
   
   gCount++;
   if(gCount == numdBlocks)
     gCount = 0;
}

class dBlock 
{   
  int dId;  
  int dx, dy, nx, ny;
  int prevX, prevY;
  int r,g,b;
  //autodraw parameters
  int masterCount;
  int count;
  int _x, _y;
  int dir = 0; 

  dBlock (int id, int x, int y) 
  {  
    dId = id;
    _x=x;
    _y=y; 
    
    //figure out quadrant
    dx = (x - 1) * 50;
    dy = (y - 1) * 50;
    
    nx = x * 50;
    ny = y * 50;
    
    //randomize parameters
    prevX = (int)random(dx, nx);
    prevY = (int)random(dy, ny);
   
    masterCount = (int)random(50); 
    count = 0;
    
    r=(int)random(255);
    g=(int)random(255);
    b=(int)random(255);
    //dir = (int)random(2);
    dir=0;
  } 
  
  void update()
  {
    if(count == masterCount)
    {
       count = 0;
       masterCount = (int)random(50);

       dir=(int)random(2);
       fill(random(255));
       noStroke();
       rect(dx, dy, nx, ny); 
    }
    count++;
    
    if(r>255)
      r=(int)random(255);
    if(g>255)
      g=(int)random(255);
    if(b>255)
      b=(int)random(255);
      
    strokeWeight(1);    
    
      int trio = (int) random(3);
      int trip = (int)random(50);
      int ywlk = (int)random(100);
      int xwlk = (int)random(100);
      int ywlk2 = (int)random(100);
      int xwlk2 = (int)random(100);
      
      for(int i=0; i<50; i++)
      {
        
        if(i == trip)
        {
          trip = (int)random(i,50);
          r=(int)random(255);
          g=(int)random(255);
          b=(int)random(255);          
        }
        else
        {
          trip++;
        }
       
        if(trio == 0)
          stroke(r++,g,b);
        else if(trio == 1)
          stroke(r,g++,b);
        else
          stroke(r,g++,b);
        
        line(dx+i, dy, nx+i, dy); 
        
      if(dir == 0)
      {
        stroke(0);
        line(dx+xwlk, dy+ywlk, dx+xwlk2, dy+xwlk2);
        stroke(255);
        //line(dx+ywlk, dy+xwlk, dx+ywlk2, dy+ywlk2);
        line(nx, ny-ywlk2, nx-xwlk2, ny );
      }
      /*else if(dir == 1)
      {
        stroke(0);
        line(dx-xwlk, dy-ywlk, dx-xwlk2, dy-xwlk2);
        stroke(255);
        //line(dx+ywlk, dy+xwlk, dx+ywlk2, dy+ywlk2);
        line(nx, ny+ywlk2, nx+xwlk2, ny );
        
      }*/
    }
  }
} 
