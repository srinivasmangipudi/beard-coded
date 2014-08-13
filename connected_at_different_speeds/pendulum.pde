color bg = color(255);
color fg = color(0);
int count = 8;
int fib=0;
int pos=0;

int rad = 1;

float x0,y0, x1, y1, w, h;

float fx[];
int   fp[];
color fc[];

void setup()
{
  size(800,400);
  w= width;
  h=height;
  smooth();
  frameRate(24);
  noFill();
  noStroke();
  
  fx = new float[count];
  //fy = new float[10];
  fp = new int[count];
  fc = new color[count];
  
  for(int i=0; i<count; i++)
  {
    fx[i] = 0.0;
    fp[i] = 0;
    
    //fc[i] = color(random(255),random(255),random(255),random(255));
    fc[i] = color(random(255),random(255));

  }
}

void draw()
{
  println(count);
  background(bg);
  
  //fill(255,0,0);
  //stroke(255,0,0);
  //noStroke();  
  
    for(int j=0; j<count; j++)
    {
      //ellipse(fx[j], height/(j+1), 50, 50);
      //ellipse(width-fx[j], height/(j+1), 50, 50);
      
      /*if(fx[j] > width/2)
      {
        ellipse(fx[j]-(width/2), height/(j+1), 50, 50);        
        ellipse(width-fx[j]-(width/2), height/(j+1), 50, 50);
      }*/

      
      if(j>0)
      {
        stroke(0,0,0);

        line(fx[j-1], height/(j), fx[j], height/(j+1));
        line(width-fx[j-1], height/(j), width-fx[j], height/(j+1));
        
        //line(fx[j-1]+(width/2), height/(j), fx[j]+(width/2), height/(j+1));
        //line((width-fx[j-1])-(width/2), height/(j), (width-fx[j])-(width/2), height/(j+1));
        
      }
      
      if(abs(fx[j] - (width-fx[j])) < 50)
      {
        noStroke();
        fill(color(random(255),random(255),random(255),random(255)));
        ellipse(fx[j], height/(j+1), 50, 50);
        fill(color(random(255),random(255),random(255),random(255)));
        ellipse(width-fx[j], height/(j+1), 50, 50);
        noFill();
      }
      //line(fx[j],(height/(j+1))+10, fx[j],(height/(j+1)-10));
       
      //point(fx[j], height/(j+1));
      
      if(fp[j] == 0)
      {
        fx[j] = fx[j]+(j+1);
        if(fx[j] > width)
          fp[j] = 1;
      }
      else
      {
        fx[j] = fx[j]-(j+1);
        if(fx[j] < 0)
          fp[j] = 0;
      }
    }  
}

