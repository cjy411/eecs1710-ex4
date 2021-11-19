class Stick{
  int index;
  float x,y, l;
  float speedY;
  float gravity;
  float angle;
  float strokeness=10;
  color stickColor= 0x000000;
  
  Stick(float x, float y, float l, float angle) {
    this.x = x;
    this.y = y;
    this.l = l;
    this.angle= angle;
  }
  
  Stick copy() {
    Stick s = new Stick(x, y, l, angle);
    return s;
    
  }
  
  void drawStick() {
    strokeWeight(strokeness);
    fill(stickColor);
    stroke(stickColor);
    float dy = l/2*sin(angle);
    float dx = l/2*cos(angle);
    line(x-dx, y-dy, x+dx, y+dy);
  }
  
}
