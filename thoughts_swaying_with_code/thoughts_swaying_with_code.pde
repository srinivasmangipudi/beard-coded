color bg = color(0);
color fg = color(255);
color zenc = color(0, 10);

int count = 0;
int fib=1;

float x,y, nx, ny;
int branches;
float bsize;
PFont f;                          // STEP 2 Declare PFont variable

float[] px;
float[] py;

void setup()
{
  size(400,400);
  smooth();
  frameRate(1);
  background(fg);
  stroke(bg);
  f = createFont("Arial",16,true); // STEP 3 Create Font
  
  x = width/2;
  y = height;
  bsize = y;
  oneTree();
}


void draw()
{ 
   
  if(frameCount%3 == 0)
  {
  //fill(0, 10); // semi-transparent white
  fill(zenc);
  noStroke();
  //rect(0, 0, width, height);
  ellipse(width/2, height/2, width, height);

    oneTree();
  }
}

void oneTree()
{
  background(255);
  //stroke((int)random(255), (int)random(255));
  //fill(0, 10); // semi-transparent white
  fill(zenc);
  noStroke();

  ellipse(width/2, height/2, width, height);

  textFont(f,16);                
  try 
  {
      branches = (int)random(1,25);
      px = new float[branches+1];
      py = new float[branches+1];
      
      for(int i=0; i<=branches; i++)
      {
        //if(branches==0)return;
        px[i] = random(width);
        py[i] = random(height);
                 
        if(px[i] < width/2)
        {
          while(px[i] != width/2)
          {
            x = random(px[i], width/2);
            y = random(py[i], height);
            
            //float x1 = random(px[i], width/2);
            //float y1 = random(py[i], height);
            
            stroke(bg);
            line(px[i], py[i], x,y);
            //line(px[i], py[i], x1,y1);
            
            
            int fruits = (int) random(10);
            noStroke();
            for(int j=0; j<fruits; j++)
            {
              fill(random(255),random(255),random(255));
              ellipse(px[i]+random(-5,5),py[i]+random(-5,5), random(1,10),random(1,10));   
            }
            stroke(bg);
            //stroke((int)random(255));
            
            px[i] = x;
            py[i] = y;
          }   
        }
        else
        {
          while(px[i] != width/2)
          {
            x = random(width/2, px[i]);
            y = random(py[i], height);
            stroke(bg);
            line(px[i], py[i], x,y);

            int fruits = (int) random(10);
            noStroke();
            for(int j=0; j<fruits; j++)
            {
              fill(random(255),random(255),random(255));
              ellipse(px[i]+random(-5,5),py[i]+random(-5,5), random(1,10),random(1,10));   
            }
            stroke(bg);

            px[i] = x;
            py[i] = y;
          }           
        }
      }

  }
  catch (Exception e) {
  println("Something went wrong: ", e);

}
}

void mouseClicked() {
zenc = color(random(255),random(255),random(255),random(255));
//ellipse(width/2, height/2, width, height);

}
