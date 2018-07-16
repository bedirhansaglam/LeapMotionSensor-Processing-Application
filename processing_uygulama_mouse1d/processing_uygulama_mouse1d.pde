import de.voidplus.leapmotion.*;
LeapMotion leap;

void setup() {
  size(640, 360);
  noStroke();
  colorMode(RGB, height, height, height);
  leap = new LeapMotion(this);
  rectMode(CENTER);
}

void draw() {
  background(0.0);

 for (Hand hand : leap.getHands()) {
    Finger index = hand.getIndexFinger();
    PVector pos = index.getPosition();
    if (hand.isRight()) {
      stroke(255, 0, 0);
      float r1 = map(pos.x, 0, width, 0, height);
  float r2 = height-r1;
  
  fill(r1);
  rect(width/2 + r1/2, height/2, r1, r1);
  
  fill(r2);
  rect(width/2 - r2/2, height/2, r2, r2);
    }

  }
  
}