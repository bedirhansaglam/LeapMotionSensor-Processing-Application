
import de.voidplus.leapmotion.*;
LeapMotion leap;
void setup() {
  size(640, 360); 
  noStroke();
  rectMode(CENTER);
  leap = new LeapMotion(this);
}

void draw() {
  background(51); 
  
  for (Hand hand : leap.getHands()) {
    Finger index = hand.getIndexFinger();
    PVector pos = index.getPosition();
    if (hand.isRight()) {
      fill(255, 204);
  rect(pos.x, height/2, pos.y/2+10, pos.y/2+10);
  fill(255, 204);
  int inverseX = width-int(pos.x);
  int inverseY = height-int(pos.y);
  rect(inverseX, height/2, (inverseY/2)+10, (inverseY/2)+10);}
  }
}