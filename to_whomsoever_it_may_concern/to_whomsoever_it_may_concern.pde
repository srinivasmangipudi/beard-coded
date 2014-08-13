color bg = color(0);
color fg = color(255);

float x,y, nx, ny;
PFont f;                          

int size=256;
int margin;
float delay = 0.0;
int dirtn = 0;
int ccc = 1115416;
void setup()
{
  size(800,400);
  smooth();
  frameRate(10);
  background(bg);
  stroke(fg);
  f = createFont("Arial",size,true); 
  
  //size=256;
  x = width/size;
  y = size;
}

void draw()
{
  fill((int)random(255),(int)random(255),(int)random(255),(int)random(255));
  stroke((int)random(255),(int)random(255),(int)random(255),(int)random(255));
  strokeWeight((int)random(100));
  /*int col = (int)random(2);
  
  if(col == 0)
    fill((int)random(255),0,0);
  else
    fill((int)random(255));*/
  
  textFont(f,size);    
  //waitasec(delay);
  
  //int symbol = (int)random(65535);
  int symbol = (int)random(1114112);
  //int symbol = ccc++;
  println(symbol);
  text(char(symbol), x, y);
  
  //float linex = random(width);
  //float liney = random(height);
  
  if(10 == (int)random(50))
  {
    line(0,y, width,y);
  }
  if(10 == (int)random(50))
  {
    line(x,0, x,height);
  }
  
  if(dirtn == 1)
  {
     y += size;

    if(y+margin >= height)
    {
      y = size;
      x += size;
    }
    if( x+margin >= width)
    {
      size = (int)random(10, 256);
      
      //float m = millis();
      //frameRate = (m%(size))/10;    
      int r = (int)(1.0/size) * 100;
  
      if(r == 0)
      {
        r =1;
         //size/100);
      } 
      
      //delay = size/100;
      frameRate(r);
      println(r);
      background(bg);
      x = size;      
      dirtn = (int)random(2);  
    }
  }
  else
  {
     x += size;

    if(x+margin >= width)
    {
      x = margin;
      y += size;
    }
    if( y+margin >= height)
    {
      size = (int)random(10, 256);
      
      //float m = millis();
      //frameRate = (m%(size))/10;    
      int r = (int)(1.0/size) * 100;
  
      if(r == 0)
      {
        r =1;
         //size/100);
      } 
      
      //delay = size/100;
      frameRate(r);
      println(r);
      background(bg);
      y = size;
      
     dirtn = (int)random(2);
    }
  }
}

void waitasec (int sec) {

   int minutes = minute();
   int seconds = second();
   int hour = hour();
   int starttime = (hour * 3600) + (minutes * 60) + seconds;
   int finaltime = starttime + sec;

   while (starttime < finaltime) {

       minutes = minute();
       seconds = second();
       starttime = (hour * 3600) + (minutes * 60) + seconds;
   }
}

void mouseClicked() {

draw();
}
