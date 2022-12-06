
ArrayList<Obsticle> obs;
Bird b;
int counter = 0;
void setup() {
  size (900, 500);
  obs = new ArrayList<Obsticle>();
  b = new Bird(300, height/2);
}

void draw() {
  background(0);
  for (int i = 0; i < obs.size(); i++) {
    obs.get(i).draw();
  }
  b.draw();
  for (int i = 0; i < obs.size(); i++) {
    if (obs.get(i).xPos < - 80) {
      obs.remove(i);
    }
    if (mousePressed) {
      b.jump();
    }
  }
  counter --;
  if (counter < 0) {
    obs.add(new Obsticle());
    counter = SPREAD;
  }
}
