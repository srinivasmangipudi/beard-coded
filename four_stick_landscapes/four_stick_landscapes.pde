color fg = color(0);
int count = 0;
int fib=0;
int pos=0;

int rad = 0;

float x0,y0, x1, y1, w, h, rg, gg, bg;

float fx[];
float fy[];
color fc[];


void setup()
{
  size(400,400);
  w= width;
  h=height;
  smooth();
  frameRate(24);
  noFill();
  noStroke();  
  count = (int) random(1, 800);
}

void draw()
{
  switchMode(1);
}

void switchMode(int mode)
{
  if(mode == 1)
  {
    if(rad > count || rad == 0)
    {
      rad=0;
      count = (int) random(1, 800);
      rg = random(255);
      gg = random(255);
      bg = random(255);

      //background(color(rg, gg, bg));

      fib = (int)random(1, 20);
      fx = new float[fib];
      fy = new float[fib];
      fc = new color[fib];
      
      for(int i=0; i<fib; i++)
      {
        fx[i] = random(width);
        fy[i] = random(height);
        
        //fc[i] = color(random(255),random(255),random(255),random(255));
        fc[i] = color(rg, gg, bg, random(154));
      }
    }

    for(int j=0; j<fib; j++)
    {
      if(j>0)
      {
        stroke(fc[j]);
        line(fx[j], fy[j], fx[j-1], fy[j-1]);
        fx[j] = fx[j] + random(-10, 10);
        fy[j] = fy[j] + random(-10, 10);   
      } 
      else
      {
        fx[j] = fx[j] + random(-10, 10);
        fy[j] = fy[j] + random(-10, 10);         
      }
    }
    
    rad++;
  }//end mode=1
  if(mode == 2)
  {
  
  }
}
