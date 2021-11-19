class Animation{
  Stick start;
  Stick end;
  Stick current;
  int frames;
  int currentFrame;
  
  Animation(Stick start, Stick end, int frames) {
    this.start = start;
    this.end = end;
    this.current = start.copy();
    this.frames = frames;
    this.currentFrame = 1;
  }
  
  void update() {
    
    if(currentFrame==frames) {
      end.drawStick();
      return;
    }
    current.drawStick();
    current.x = (end.x-start.x)/frames*currentFrame+start.x;
    current.y = (end.y-start.y)/frames*currentFrame+start.y;
    current.angle = (end.angle-start.angle)/frames*currentFrame+start.angle;
    
    currentFrame++;
  }
}
