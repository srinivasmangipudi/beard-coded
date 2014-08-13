color bg = color(255);
color fg = color(0);
int count = 0;
int fib=0;
int pos=0;

int rad = 1;

float x0,y0, x1, y1, w, h;

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
  
  fib = (int)random(2,13);
  fx = new float[fib];
  fy = new float[fib];
  fc = new color[fib];
  
  for(int i=0; i<fib; i++)
  {
    fx[i] = random(width);
    fy[i] = random(height);
    
    //fc[i] = color(random(255),random(255),random(255),random(255));
    fc[i] = color(random(255),random(255));

  }
}

void draw()
{
  background(bg);
  //noStroke();  
  //ellipse(rad, h/2, rad, rad);
  //ellipse(w-rad, h/2, rad, rad);
  //ellipse((w/2), rad, rad, rad);
  //ellipse((w/2), h-rad, rad, rad);
  
  for(int j=0; j<fib; j++)
  {
    fill(fc[j]);
    ellipse(fx[j], fy[j], rad, rad);
    
    fx[j] = fx[j] + random(-1, 1);
    fy[j] = fy[j] + random(-1, 1);
    
    
    for(int k=0; k<fib; k++)
    {
       stroke(fg);
       
       fx[k] = fx[k] + random(-1, 1);
       fy[k] = fy[k] + random(-1, 1);

      line(fx[j], fy[j], fx[k], fy[k]);

    }
  }
  
  rad++;
  if(rad > w*3)
  {
    rad=0;
    //fg = color(random(255),random(255),random(255),random(255));
    fg = color(random(255),random(255));
    fib = (int)random(2, 13);
    fx = new float[fib];
    fy = new float[fib];
    fc = new color[fib];
    
    for(int i=0; i<fib; i++)
    {
      fx[i] = random(width);
      fy[i] = random(height);
      
      //fc[i] = color(random(255),random(255),random(255),random(255));
      fc[i] = color(random(255),random(255));
  
    }
  }
}

