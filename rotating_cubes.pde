void setup() {
  size (600, 600);
}
void draw() {
  background(255,255,255);
  noStroke();
  fill(0,0,0);
  rectMode(CENTER);
  squares(mouseX - width/2.0, mouseY - height/2.0, width/2.0, height/2.0, width/6.0, 1);
  rect(width/2.0,height/2.0,width/3.0,height/3.0);
}
void squares(float s, float t, float parX, float parY, float sideLen, int level){
  rect(s + parX, t + parY, sideLen, sideLen);
  rect(-s + parX, -t + parY, sideLen, sideLen);
  rect(t + parX, -s + parY, sideLen, sideLen);
  rect(-t + parX, s + parY, sideLen, sideLen);
  if(level > 0) {
    squares(s/2, t/2, s + parX, t + parY, sideLen/2.0, level - 1);
    squares(s/2, t/2, -s + parX, -t + parY, sideLen/2.0, level - 1);
    squares(s/2, t/2, t + parX, -s + parY, sideLen/2.0, level - 1);
    squares(s/2, t/2, -t + parX, s + parY, sideLen/2.0, level - 1);
  }
}
