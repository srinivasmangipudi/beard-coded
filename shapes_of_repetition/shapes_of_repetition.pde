int[] circlesx= new int[10];
int[] circlesy= new int[10];
color[] circlesc = new color[10];

int count=0;


void setup()
{
    background(255);
    size(800, 400);
    smooth();
    frameRate(1);
    reset();
}

void draw()
{
  //noStroke();
  /*int st = (int)random(2);
  if(st == 0)
    stroke(255);
  else
    stroke(0);*/
  
  /*for(int i=0; i<10; i++)
  {
      fill(circlesc[i]);
      ellipse(circlesx[i], circlesy[i], 100, 100);  
      if(circlesy[i] > height)
      {
        resetOne(i);
      }
      else
      {
        circlesy[i] = circlesy[i] + (int)random(height/25);
      }
  }*/
  
  /*for(int i=0; i<10; i++)
  {
    int x = (int) random(16) * 50;
    int y = (int) random(16) * 50;
    fill(generateRandomColor(color(255,255,255)));
    //fill(color(random(255), random(255), random(255), random(255)));
    ellipse(x, y, 100, 100);
  }*/
  //fill(generateRandomColor(color(255,255,255)));
  fill(color(random(255), random(255), random(255)));
  drawShape();
}

void drawShape()
{
  stroke((int)random(255),(int)random(255),(int)random(255));  
  strokeWeight((int)random(10));

  int shape = (int)random(8);
  //draw a circle
  if(shape == 0)
  {
    int radius = (int)random(width);
    ellipse((int)random(width), (int)random(height), radius, radius); 
  }
  //ellipse
  else if(shape == 1)
  {
    ellipse((int)random(width), (int)random(height), (int)random(width), (int)random(height));
  }
  //line
  else if(shape == 2)
  {
    line((int)random(width), (int)random(height), (int)random(width), (int)random(height));
  }
  //triangle
  else if(shape == 3)
  {
    triangle((int)random(width), (int)random(height), (int)random(width), (int)random(height), (int)random(width), (int)random(height));
  }
  //square
  else if(shape == 4)
  {
    int radius = (int)random(width);
    rect((int)random(width), (int)random(height), radius, radius); 
  }
  //rectangle
  else if(shape == 5)
  {
    rect((int)random(width), (int)random(height), (int)random(width), (int)random(height));    
  }
  //n sides polygon
  else if(shape == 6)
  {
    quad((int)random(width), (int)random(height),(int)random(width), (int)random(height),(int)random(width), (int)random(height),(int)random(width), (int)random(height));
  }
  //arc
  else if(shape == 7)
  {
    int cc = (int) random(2);
    
    if(cc == 0)
         noFill();
    else if(cc == 1)
      fill((int)random(255),(int)random(255),(int)random(255),(int)random(255));
      
    int angle = (int)random(4);
    if(angle == 0)
    {
      arc((int)random(width), (int)random(height),(int)random(width), (int)random(height), 0, PI/2);
    }
    else if(angle == 1)
    {
      arc((int)random(width), (int)random(height),(int)random(width), (int)random(height), PI/2, PI);
    }
    else if(angle == 2)
    {
      arc((int)random(width), (int)random(height),(int)random(width), (int)random(height), PI, TWO_PI-PI/2);
    }
    else if(angle == 3)
    {
      arc((int)random(width), (int)random(height),(int)random(width), (int)random(height), TWO_PI-PI/2, TWO_PI);
    }    
  }
}

void resetOne(int i)
{    
    circlesx[i] = width - (50 * (int)random(width/50));
    circlesy[i]= 0;
    
    circlesc[i] = color(random(255), random(255), random(255));
}

void reset()
{    
    for(int i=0; i<10; i++)
    {
      circlesx[i] = width - (50 * (int)random(width/50));
      circlesy[i]= 0;
      
      //circlesc[i] = color(random(255), random(255), random(255), random(255));
      circlesc[i] = generateRandomColor(circlesc[i]);
    }
}

color generateRandomColor(color mix) {
    int red = (int)random(256);
    int green = (int)random(256);
    int blue = (int)random(256);

    // mix the color
    //if (mix) {
        red = (red + (int)red(mix)) / 2;
        green = (green + (int)green(mix)) / 2;
        blue = (blue + (int)blue(mix)) / 2;
    //}

    color nnn = color(red, green, blue, random(255));
    return nnn;
}

