color bg = color(0);
color fg = color(255);
int fib=1;
float x,y, nx, ny;

void setup()
{
  size(600,400);
  smooth();
  frameRate(24);
  background(bg);
  stroke(fg);
  
  noFill();
  //noStroke();
  //noFill();
  x = 0;
  y = height/2;
  nx = width;
  ny = height/2;
}

void draw()
{
  background(bg);
  stroke(fg);
  //fill(fg);
  //fg = color((int)random(255),(int)random(255),(int)random(255),(int)random(255));
  
  //fill((int)random(255),(int)random(255),(int)random(255),(int)random(255));
  //stroke((int)random(255),(int)random(255),(int)random(255),(int)random(255));
  //stroke(fg);
  for(int p=1; p<fib; p+=10)
  {
    ellipse(x,y,p,p);
  }
  //ellipse(x,y,fib,fib);

  //fill((int)random(255),(int)random(255),(int)random(255),(int)random(255));
  //stroke((int)random(255),(int)random(255),(int)random(255),(int)random(255));
  //stroke(fg);
  
  for(int p=1; p<fib; p+=10)
  {
    ellipse(nx,ny,p,p);
  }
  
  //ellipse(nx,ny,fib,fib);
  
  x++; nx--;
  fib++;
  
  //println(fib);
  if(fib>1200)
  {
    fib =1;
    x = 0;
    y = height/2;
    nx = width;
    ny = height/2;
    
  }
}

void mouseClicked() 
{
  color temp = fg;
  fg = bg;
  bg = temp;
}
  
