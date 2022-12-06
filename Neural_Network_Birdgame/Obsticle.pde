class Obsticle {

  float xPos;
  int gap;
  Obsticle() {
    xPos = width + OBSTICLE_WIDTH;
    gap =(int) random(MARGIN+ GAP_WIDTH/2, height-MARGIN -GAP_WIDTH/2);
  }

  void draw() {
    xPos-=SPEED;
    fill(0, 200, 0);
    rect(xPos, 0, OBSTICLE_WIDTH, gap-(GAP_WIDTH/2));

    fill(0, 200, 0);
    rect(xPos, gap+(GAP_WIDTH/2), OBSTICLE_WIDTH, height-(gap + (GAP_WIDTH/2)));
  }
}
