color bg = color(0);
color fg = color(255);
color zenc = color(0, 10);

int count = 0;
int fib=1;
float x,y, nx, ny;
int branches;
float bsize;
PFont f;                          
float[] px;
float[] py;

void setup()
{
  size(400,400);
  smooth();
  frameRate(1);
  background(fg);
  stroke(bg);
  f = createFont("Arial",16,true); 
  x = width/2;
  y = height;
  bsize = y;
  oneTree();
}


void draw()
{ 
   
  if(frameCount%3 == 0)
  {
    fill(zenc);
    noStroke();
    ellipse(width/2, height/2, width, height);
    oneTree();
  }
}

// generates random trees with random flowers and fruits on each call
void oneTree()
{
  background(255);
  fill(zenc);
  noStroke();
  ellipse(width/2, height/2, width, height);
  textFont(f,16);                
  try 
  {
      // assign a random number of branches, and save their origin co-ordinates 
      branches = (int)random(1,25);
      px = new float[branches+1];
      py = new float[branches+1];
      for(int i=0; i<=branches; i++)
      {
        px[i] = random(width);
        py[i] = random(height);
        
        // if the branch is on left side of the center, reduce branch size randomly on each iteration
        // till the branch joins the center. On each random iteration draw random fruits and flowers.
        if(px[i] < width/2)
        {
          while(px[i] != width/2)
          {
            x = random(px[i], width/2);
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
        // else its on right side of the center, do the same
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

// tap mouse click to change background circle color
void mouseClicked() 
{
  zenc = color(random(255),random(255),random(255),random(255));
}
