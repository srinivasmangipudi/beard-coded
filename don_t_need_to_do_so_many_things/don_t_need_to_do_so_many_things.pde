color c;
int points;

void setup()
{
      // set the background color
    background(255);
     
    // canvas size (Variable aren't evaluated. Integers only, please.)
    size(800, 400);
    noStroke();
    frameRate(10);
}

void draw()
{
  points = (int) random(10);

  c = color((int)random(255), (int)random(255),(int)random(255),(int)random(255));
  fill(c);
  
  beginShape();
  for(int i=0; i< points; i++)
  {
    vertex(random(width), random(height));
  }
  endShape();
  
  //rect(100, 100, 100, 100);
  
  //fill(255, 255, 255);
  //rect(400, 100, 100, 100);
 // fill(c);
  //rect(400, 100, 100, 100);
  
}
