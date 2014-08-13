int nbr_circles = 1;
color bg = color(255);
color fg = color(0);


float dd;  
  void setup()
  {
    size(400,400);
    smooth();
    frameRate(24);
    //colorMode(RGB, 100);
    dd = width * .85;

  }
  
  void draw()
  {
    background(bg);
    
    nbr_circles = 1 + nbr_circles;
  
    float lg_diam = width * .85;
    float lg_rad = lg_diam / 2;
    float lg_circ = PI * lg_diam;
    float sm_diam = (lg_circ / nbr_circles);
    float cx = width/2.0;
    float cy = height/2.0;
    
    
    for(int i=1; i<= nbr_circles; i++)
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
    }
  }
  
