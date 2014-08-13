// Pressing Control-R will render this sketch.
int icount = 0;
PFont f;                          // STEP 2 Declare PFont variable

//define variables
int canvasHeight = 400;
int canvasWidth = 800;
int rc=(int)random(255); int gc=(int)random(255); int bc=(int)random(255);
void setup() {  // this is run once.  
     
    // set the background color
    background(0);
     
    // canvas size (Variable aren't evaluated. Integers only, please.)
    size(800, 400);
       
    f = createFont("Arial",24,true); // STEP 3 Create Font

    // smooth edges
    smooth();
    
    // limit the number of frames per second
    frameRate(24);     
}
void draw() {  // this is run repeatedly. 
    //background(0);

//strokeWeight(15);
//icount++;
//stroke(0);
   //textFont(f,24);                 // STEP 4 Specify font to be used

    //String s= str(icount);
    
    //text(s, width/2, height/2);

    //stroke(0);
//    int depth = (int) random(50);
//    for(int k=1; k<=depth; k++)
{     
     bc++;
      if(bc >= 255)
        {  bc=(int)random(255);
           //gc=(int)random(255);
           //bc=(int)random(255);
           //bc=0;
       }
        else
       {
         gc=(int)random(255);
         rc=(int)random(255);
       }

    
    for(int j=1; j<=height; j++)
    {
      gc++;
      if(gc >= 255)
            {  //rc=(int)random(255);
           //rc=(int)random(255);
           gc=(int)random(255);
           //gc=0;
       }
       else
       {
         rc=(int)random(255);
          bc=(int)random(255);
       }

 for(int i=1; i<=width; i++)
      {
        rc++;
       if(rc >= 255) 
       {  rc=(int)random(255);
           //gc=(int)random(255);
           //bc=(int)random(255);
           //rc=0;
       }
       else
       {
         //rc=(int)random(255);
         gc=(int)random(255);
           bc=(int)random(255);
       }
       //println(rc);
       stroke(rc, gc, bc);
       point(i, j);
       
       //stroke(0);
       //point((int)random(i), j);
       //
       //stroke(255);
       //point((int)random(j), (int)random(i));

      }
    }
}
}


