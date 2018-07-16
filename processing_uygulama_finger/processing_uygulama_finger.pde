import de.voidplus.leapmotion.*;


LeapMotion leap;

void setup() {
  size(800, 500);
  background(255);
  // ...

  leap = new LeapMotion(this);
}

void draw() {
  background(255);
  // ...

  int fps = leap.getFrameRate();
  for (Hand hand : leap.getHands ()) {
    for (Finger finger : hand.getFingers()) {
       finger.drawBones();
       finger.drawJoints();
    }
  }
     
}