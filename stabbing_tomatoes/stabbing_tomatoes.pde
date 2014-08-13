int rad = 150;
color bg = color(0);
color fg = color(255);
int  start=1;

float dd;  
  void setup()
  {
    size(400,400);
    smooth();
    frameRate(12);
    //colorMode(RGB, 100);
    //dd = width * .85;
background(bg);
  }
  
  void draw()
  {
    background(bg);
    stroke(fg);
    int flip = 0;
    //nbr_circles = 1 + nbr_circles;
  
    //float lg_diam = width * .85;
    //float lg_rad = lg_diam / 2;
    //float lg_circ = PI * lg_diam;
    //float sm_diam = (lg_circ / nbr_circles);
    float cx = width/2.0;
    float cy = height/2.0;
    
    float x=0.0;
    float y=0.0;
    float px=0.0;
    float py=0.0;
    
    
    for(int ang=0; ang<=360; ang++)
    {
      if(flip==0)
      {
        x=cx+rad*cos(ang);
        y=cy+rad*sin(ang);
        
        if(px != 0.0)
        {
          stroke(255,99,71);
          //stroke(255,255,255);
          line(px,py, x,y);
        }
        
        stroke(fg);
        strokeWeight(1);
        point(x,y);
        
        /*stroke(255, 0,0);
        point(x,x);
        
        stroke(0,255,0);
        point(y,y);*/
        px=x;
        py=y;
        flip=1;
        start = 0;
      }

      if(flip==1)
      {
        x=cx+random(0,rad)*cos(ang);
        y=cy+random(0,rad)*sin(ang);
        
        //tomato color
        //stroke(255,255,255);
        //line(px,py, x,y);
        //fill(255,99,71);
        stroke(255,99,71);
        
        ellipse(x,y, rad, rad);
        //stroke(255,255,0);
        //strokeWeight(3);
        //point(x,y);

        /*strokeWeight(1);
        stroke(255, 0,0);
        point(x,x);
        
        stroke(0,255,0);
        point(y,y);*/
        px=x;
        py=y;
        flip=0;
      }
      
    }
    //ellipse(cx, cy, rad, rad);
    
   /* for(int i=1; i<= nbr_circles; i++)
    {
      //noFill();
      fill(fg);
      ellipse(cx, cy, i, i);    
    }
    
    if(nbr_circles >= width)
    {
      nbr_circles = 0;
      bg = color(random(255),random(255),random(255), random(255));
      fg = color(random(255),random(255),random(255), random(255));
    }*/
  }
  
