float x,x1,y,y1,m,b;
float root;
int panels = 6;
float px[];
float py[];
float zm1[];
float zm2[];

int pn1, pn2, pn3, pn4;
void setup() 
{
    background(255);
    size(800, 400);
    smooth();
    frameRate(1);
    px = new float[800];
    py = new float[800];
    zm1 = new float[panels];
    zm2 = new float[panels];
    
    for(int i=0; i<panels; i++)
    {
      zm1[i] = random(-0.3, 0.3);
      zm2[i] = random(-0.3, 0.3);
    }
}

void draw() 
{
  background(255);
  b=0;
  x=0;
  //root = width/4;
  root =0;

  //println(root);
  //m = random(-0.3, 0.3);
  //m = -0.3;
  
  for(int j =0; j<panels; j++)
  {
    stroke((int)random(255));
    for (int y=0; y<height; y++)
    { 
      x = (y-b)*m;
      point(x+root,y);
      
      if(root <= 800 && root >= 600)
       { blackwhitelines(root, x+root, y, px[y]); }
        
      if(root <= 600 && root >= 400)
        { flowers(root, x+root, y, px[y]); }

      if(root <= 400 && root >=200)
       { lines(root, x+root, y, px[y]); }

      if(root >= 0 && root <= 200)
      { blacklines(root, x+root, y, px[y]); 
        //crosses(root, x+root, y, px[y]);
      }
      
      if(root == 0)
       { crosses(root, x+root, y, px[y]); }
      
      
      
      px[y] = x+root;
    }

    //root+=width/4;
    root += random(width/4);

    //println(zm1[j]);
    //println(zm2[j]);
    
    /*if(zm1[j] == zm2[j])
    {
      zm1[j] = random(-0.3, 0.3);
      zm2[j] = random(-0.3, 0.3);
    }
    else if(zm1[j] > zm2[j])
    {
      zm1[j] = zm1[j]-0.1; 
    }
    else
      zm1[j] = zm1[j]+0.1;*/
    m = random(-0.3, 0.3);
  }
}

void circles(float root, float x)
{
  stroke((int)random(255));

  float a,b;
  a = random(root, x+root);
  b = random(0, height);
  line(a,b, 2*PI*random(a-b), (int) random(360));
}


void crosses99(float root, float x, float y, float px)
{
  stroke((int)random(255));

  float a,b;
  if(root ==0)
    a = random(0, x);
  else
    a = random(px, x);

  b = random(0, height);
  line(x+root,a,y,b);
}

void shapes(float root, float x, float y, float px)
{
  float a,b;
  //a = random(root, x+root);
  if(root ==0)
    a = random(0, x);
  else
    a = random(px, x);

  b = random(0, height);
  //stroke((int)random(255),(int)random(255),0);
  stroke((int)random(255));
  
  strokeWeight(1);
  point(a,b);
  beginShape();
  vertex(random(root, x+root), random(0, height));
  vertex(random(root, x+root), random(0, height));
  vertex(random(root, x+root), random(0, height));
  vertex(random(root, x+root), random(0, height));
  vertex(random(root, x+root), random(0, height));
  endShape();
  stroke(0);
}

void crosses(float root, float x, float y, float px)
{
  float a,b;
  if(root ==0)
    a = random(0, x);
  else
    a = random(px, x);
  //print("a:"); println(a);
  stroke((int)random(255),(int)random(255),(int)random(255),(int)random(255));
  strokeWeight(1);
  line(a-1, y, a+1, y);
  line(a, y-1, a, y+1);
}

void lines(float root, float x, float y, float px)
{
  float a,b;
  if(root ==0)
    a = random(0, x);
  else
    a = random(px, x);

  //print("a:"); println(a);
  stroke((int)random(255),(int)random(255),(int)random(255),(int)random(255));
  strokeWeight(1);
  line(px, y, a, y);
  //line(a, y, x, y);
}

void blackwhitelines(float root, float x, float y, float px)
{
  int flip = (int)random(2);
  if(flip == 0)
    stroke(0);
  else
    stroke(255);

  strokeWeight(1);
  line(px, y, x, y);
}

void blacklines(float root, float x, float y, float px)
{
  stroke(0);
  strokeWeight(1);
  line(px, y, x, y);
}

void flowers(float root, float x, float y, float px)
{
  stroke((int)random(255),(int)random(255),(int)random(255),(int)random(255));

  float a,b;
  if(root ==0)
    a = random(0, x);
  else
    a = random(px, x);
    
    int flip = 0;
    if(flip == 0)
      fill((int)random(255),(int)random(255),(int)random(255),(int)random(255));
    else
      noFill();
    
    ellipse(a,y, (int)random(10), (int)random(10));
  
    //print("a:"); println(a);
    //print("b:"); println(b);
}

