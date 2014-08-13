int nbr_circles = 1;
int fib = 1;
float angle_incr = 2*PI / nbr_circles;
//float angle_incr;


  void setup()
  {
    size(400,400);
    smooth();
    frameRate(12);
    //colorMode(RGB, 100);
  }
  
  void draw()
  {
    //background(random(255),random(255),random(255));
    background(232,33,19); //red
    background(174,9,255); //purple
    background(0,0,0); //purple
    
  
    float elapsedSeconds = millis()*.001;
    float angle_incr = radians(2 + frameCount/12.0);
  
    nbr_circles = 1 + nbr_circles;
    
    //fib += fib;
    
    float lg_diam = width * .85;
    float lg_rad = lg_diam / 2;
    float lg_circ = PI * lg_diam;
    float sm_diam = (lg_circ / nbr_circles);
    float cx = width/2.0;
    float cy = height/2.0;
    //fill(random(255));
    
    for (int i = 1; i <= nbr_circles; ++i) {
      fill(random(255), random (255), random(255));
      //fill(random(255));
      float ratio = i/(float)nbr_circles;
      float spiral_rad = ratio * lg_diam;
      float angle = i*angle_incr;
      
      float x = cx + cos(angle) * spiral_rad;
      float y = cy + sin(angle) * spiral_rad;
      
      stroke(random(255), random (255), random(255));
      ellipse(x, y, sm_diam, sm_diam);
      //stroke(random(255), random (255), random(255));
      //stroke(random(255));
      //line(x,y, cx+random(-lg_rad, lg_rad), cy+random(-lg_rad, lg_rad));
    }
  }
  // END
  
