class AlphabitTable {
  Alphabit[] alphabits = {new Alphabit(), new Alphabit(), new Alphabit(), new Alphabit(), new Alphabit()};
  char[] letters = {'S','P','I','C','Y'};
  int count = 0;
  
  ArrayList<Stick> buildAll(float offsetx, float offsety, float space) {
    buildLetter1();
    buildLetter2();
    buildLetter3();
    buildLetter4();
    buildLetter5();
    
    ArrayList<Stick> result = new ArrayList<Stick>();
    
    for(int i=0;i<alphabits.length;i++) {
      for(Stick stick: alphabits[i].sticks) {
        Stick nstick = stick.copy();
        nstick.x+=offsetx+i*space;
        nstick.y+=offsety;
        result.add(nstick);
      }
    }
    return result;
  }
  
  void buildLetter1() {
    Stick s1 = new Stick(25,0,50,0);
    Stick s2 = new Stick(25,50,50,0);
    Stick s3 = new Stick(25,100,50,0);
    Stick s4 = new Stick(0,25,50,PI/2);
    Stick s5 = new Stick(50,75,50,PI/2);    
    alphabits[0].addStick(s1);
    alphabits[0].addStick(s2);
    alphabits[0].addStick(s3);
    alphabits[0].addStick(s4);
    alphabits[0].addStick(s5);
  }
  
  void buildLetter2() {
    Stick s1 = new Stick(25,0,50,0);
    Stick s2 = new Stick(25,50,50,0);
    Stick s3 = new Stick(0,75,50,PI/2);
    Stick s4 = new Stick(0,25,50,PI/2);
    Stick s5 = new Stick(50,25,50,PI/2);
    alphabits[1].addStick(s1);
    alphabits[1].addStick(s2);
    alphabits[1].addStick(s3);
    alphabits[1].addStick(s4);
    alphabits[1].addStick(s5);
  }
  
  void buildLetter3() {
    Stick s4 = new Stick(25,25,50,PI/2);
    Stick s5 = new Stick(25,75,50,PI/2);
    alphabits[2].addStick(s4);
    alphabits[2].addStick(s5);
  }
  
  void buildLetter4() {
    Stick s1 = new Stick(25,0,50,0);
    Stick s2 = new Stick(25,100,50,0);
    Stick s4 = new Stick(0,25,50,PI/2);
    Stick s5 = new Stick(0,75,50,PI/2);
    alphabits[3].addStick(s1);
    alphabits[3].addStick(s2);
    alphabits[3].addStick(s4);
    alphabits[3].addStick(s5);
  }
  
  void buildLetter5() {
    Stick s1 = new Stick(10,20,45,PI/4);
    Stick s2 = new Stick(40,20,45,PI*3/4);
    Stick s5 = new Stick(25,70,60,PI/2);
    alphabits[4].addStick(s1);
    alphabits[4].addStick(s2);
    alphabits[4].addStick(s5);
  }
  
}
