import de.voidplus.leapmotion.*;
PVector pos;
LeapMotion leap;
ArrayList<PVector> cursors = new ArrayList<PVector>();
float x;
float y;
float easing = 0.05;

void setup() {
  size(640, 360); 
  leap = new LeapMotion(this);
  noStroke();  
}

void draw() { 
  background(51);
  for (Hand hand : leap.getHands()) {
    Finger index = hand.getIndexFinger();
    PVector pos = index.getPosition();
    if (hand.isRight()) {
      stroke(255, 0, 0);
    } else {
      stroke(0, 255, 0);
    }
    ellipse(pos.x, pos.y, 66, 66);
    cursors.add(pos);
    
  }
  fill(255);
  textSize(20);
  textAlign(CENTER);
  text("İşaret Parmağı İmleci(Sağ = Kırmızı, Sol = Yeşil)", width/2, 50);
  
  //float targetX = ;
  //float dx = targetX - x;
  //x += dx * easing;
  
  //float targetY = mouseY;
  //float dy = targetY - y;
  //y += dy * easing;
  
  //ellipse(x, y, 66, 66);
}