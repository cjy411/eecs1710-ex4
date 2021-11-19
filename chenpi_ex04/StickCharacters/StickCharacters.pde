

AlphabitTable table;
ArrayList<Animation> animations;
ArrayList<Stick> sticks;
ArrayList<Stick> allSticks;
float gravity = 0.1;

void setup() {
  size(600,400);
  sticks = new ArrayList<Stick>();
  animations = new ArrayList<Animation>();
  table = new AlphabitTable();
  allSticks = table.buildAll(100,100, 80);
  int idx = 0;
  for(Stick stick: allSticks) {
    Stick nstick = stick.copy();
    nstick.angle = 0;
    nstick.x = random(150)+10;
    nstick.y = 0;
    nstick.angle = PI/2;
    nstick.gravity = gravity+random(0.1);
    nstick.index = idx;
    idx++;
    //println(nstick.gravity);
    sticks.add(nstick);

  }
  
}

void draw() {
  background(255);
  
  for(Stick stick: sticks) {
    stick.drawStick();
  }
  
  for(Stick stick: new ArrayList<Stick>(sticks)) {
    println(stick.y+stick.l/2);
    if(stick.y+stick.l/2<=height){
      stick.y+=stick.speedY;
      println(stick.speedY); //<>//
      stick.speedY += stick.gravity;
    }else{
      stick.angle = random(14)+14;
      animations.add(new Animation(stick,allSticks.get(stick.index), 200));
      sticks.remove(stick);
    }
  }
  
  for(Animation animaiton: animations){
    animaiton.update();
  }
  
  
  //noFill();
  //strokeWeight(1);
  //rect(100,100,50,100);
  //pushMatrix();
  //translate(100,100);
  //Stick s1 = new Stick(14,25,35,PI/4);
  //Stick s2 = new Stick(36,25,35,PI*3/4);
  //Stick s5 = new Stick(25,70,60,PI/2);
  //s1.drawStick();
  //s2.drawStick();
  ////s3.drawStick();
  ////s4.drawStick();
  //s5.drawStick();
  //popMatrix();
}
