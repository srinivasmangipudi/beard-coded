
class Ball {
  
  float x;
  float y;
  float speed;
  float gravity;
  float w;
  float life = 1000;
  float mood1;
  float mood2;
  float mood3;
  
  
  Ball(float tempX, float tempY, float tempW) {
    x = tempX;
    y = tempY;
    w = tempW;
    speed = 0;
    gravity = 0.1;
    mood1 = random(255);
    mood2 = random(255);
    mood3 = random(255);

  }
  
    float getX() { return x;}
    float getY() { return y;}
    float getLife() { return life;}
    
    
    void move() {
    // Add gravity to speed
    speed = speed + gravity;
    // Add speed to y location
    y = y + speed;
    // If square reaches the bottom
    // Reverse speed
    if (y > height) {
      // Dampening
      speed = speed * -0.9;
      y = height;
    }
  }
  
  boolean finished() {
    // Balls fade out
    life--;
    if (life < 0) {
      return true;
    } else {
      return false;
    }
  }
  
  void display() {
    // Display the circle
    fill(mood1,mood2,mood3,life);
    //fill(255,0,0);
    //stroke(0,life);
    ellipse(x,y,w,w);
  }
}  
