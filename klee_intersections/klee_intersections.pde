
void setup()
{
    background(255);
    size(800, 400);
    smooth();
    frameRate(1);
    colorMode(HSB,255,255,255);
}

void draw() {
  noFill();
  float a = 0.0;
  a = random(0,6.28);
  float amp = random(width);
  float freq = random(width);

  float inc = TWO_PI/freq;
  color fog = 0;
  
  fog = color((int)random(255), (int)random(255),(int)random(255),(int) random(255));
  stroke(fog);

  float guessy1 = random(height);
  float guessy2 = random(height);

  for(int i=0; i<width; i=i+1) {
  line(i, guessy1, i, guessy1+sin(a)*amp);
  a = a + inc;
  }
}
