// Pressing Control-R will render this sketch.
int icount = 0;
PFont f;                          // STEP 2 Declare PFont variable
int swap = 0;
float amplitude;
int opacity;

//define variables
int canvasHeight = 400;
int canvasWidth = 800;
int rc=(int)random(255); int gc=(int)random(255); int bc=(int)random(255);
void setup() {  // this is run once.  
     
    // set the background color
    background(255);
     
    // canvas size (Variable aren't evaluated. Integers only, please.)
    size(800, 400);
       
    f = createFont("Arial",24,true); // STEP 3 Create Font

    // smooth edges
    smooth();
    
    // limit the number of frames per second
    frameRate(24);  
    icount=width/4;   
    amplitude = random(width);
}
void draw() 
{
   //println(icount);
  
   if(swap == 1)
    icount--;
   else  
    icount++;
    
   if(icount >= amplitude) 
   {
     swap=1;
     amplitude = random(width);
     //println("=");
     //println(amplitude);
     //println("=");
     //icount = 0;
     
     /*
     stroke(255, opacity);
     fill(255, opacity);
     ellipse(icount, height/4, height/4, height/4);
     ellipse(icount, height/2, height/3, height/3);
     ellipse(icount, height-height/4, height/2, height/4);
      */
   }

   if(icount < 0) 
   {
     swap=0;
     amplitude = random(width);
     //icount = 0;
     //println("=");
     //println(amplitude);
     //println("=");
     /*
     stroke(0, opacity);
     fill(0,opacity);
     ellipse(icount, height/4, height/2, height/4);
     ellipse(icount, height/2, height/3, height/3);
     ellipse(icount, height-height/4, height/4, height/4);
    */
   }
   opacity = round(amplitude);
   
   float a = random(360.0);
   float inc = TWO_PI/500.0;
   stroke(color(rc,gc,bc), opacity);
   //fill(color(rc,gc,bc), opacity);
   line(icount, 0, icount, height);
   //line((width/4)+icount, 0, (width/4)+icount, height);
   //ellipse((width/4)+icount, height/4, height/4, height/4);
   //ellipse((width/4)+icount, height/2, height/3, height/3);
   //ellipse((width/4)+icount, height-height/4, height/2, height/4);

   //line(width-(width/4)-icount, 0, width-(width/4)-icount, height);
   //ellipse(width-(width/4)-icount, height/4, height/2, height/4);
   //ellipse(width-(width/4)-icount, height/2, height/3, height/3);
   //ellipse(width-(width/4)-icount, height-height/4, height/4, height/4);
   
   int dd = (int)random(100);
   if(dd == 0)
     gc = (int)random(255);
   if(dd ==0)
     bc = (int)random(255);
   if(dd==0)
     rc = (int)random(255);
   //stroke(rc,gc,bc);

   stroke(color(rc,gc,bc), opacity);
   //fill(color(rc,gc,bc),opacity);
   line(width-icount, 0, width-icount, height);
    
   int wave = (int)random(width/2);
   
   float px=0;
   float py=0;
   
   int epoch = (int)random(width*2);
   
   //strokeWeight(dd/7);

for(int i=0; i<(height); i++) 
{
  //strokeWeight((int)random(25));
  //line(i, height/2, i, height/2+sin(a)*height/2);
  //point(i, height/2+sin(a)*height/2);
  
  //point(wave+sin(a)*wave, i);
  //point((width-(wave))+sin(a)*(wave), i);
  
  if(px==0 && py==0)
  {
    px=(width/2)+sin(a)*(abs(epoch));
    py=i;
  }
  else
  {
 
      float x = (width/2)+sin(a)*(abs(epoch));
      float y = i;
      line(x,y, px, py);
      px=x;
      py=y;
      
  }
  
  //point((width/2)+sin(a)*(abs(icount)), i);
  a = a + inc;
  
    //background(0);

//strokeWeight(15);
//icount++;
    
//    int depth = (int) random(50);
//    for(int k=1; k<=depth; k++)

   //float x = sin(height/2);
   //float y = cos(width/2);
   //point(x,y);

}
  
  /*
   stroke(123);
   textFont(f,24);                 // STEP 4 Specify font to be used
   String s= str(icount); 
   text(s, 10, 50);

   String s1= str(amplitude); 
   text(s1, 10, 100);
    */
}


