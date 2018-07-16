float mx;
float my;
float easing = 0.05;
int radius = 24;
int edge = 100;
int inner = edge + radius;
import de.voidplus.leapmotion.*;
LeapMotion leap;

void setup() {
  size(640, 360);
  noStroke(); 
  ellipseMode(RADIUS);
  rectMode(CORNERS);
  leap = new LeapMotion(this);
}

void draw() { 
  background(51);
  for (Hand hand : leap.getHands()) {
    Finger index = hand.getIndexFinger();
    PVector pos = index.getPosition();
    if (hand.isRight()) {
  if (abs(pos.x - mx) > 0.1) {
    mx = mx + (pos.x - mx) * easing;
  }
  if (abs(pos.y - my) > 0.1) {
    my = my + (pos.y- my) * easing;
  }
  
  mx = constrain(mx, inner, width - inner);
  my = constrain(my, inner, height - inner);
  fill(76);
  rect(edge, edge, width-edge, height-edge);
  fill(255);  
  ellipse(mx, my, radius, radius);}}
}