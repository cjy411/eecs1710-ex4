class Alphabit{
  ArrayList<Stick> sticks = new ArrayList<Stick>();
  
  void addStick(Stick stick) {
    sticks.add(stick);
  }
  
  ArrayList<Stick> allSticks() {
    return new ArrayList<Stick>(sticks);
  }
}
