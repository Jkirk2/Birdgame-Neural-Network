class Bird {
  float x;
  float y;
  float ySpeed;
  float gravity;
  float size;
  int jumpCooldown;
  Bird(float x, float y) {
    this.x=x;
    this.y=y;
    gravity = GRAVITY;
    ySpeed = 0;
    size = BIRD_SIZE;
    jumpCooldown = 0;
  }

  void draw() {
    fill(255, 255, 0);
    if(collision()){
     fill(255,0,0); 
     ySpeed = 0;
    }
    rect(x, y, BIRD_SIZE, BIRD_SIZE);
    ySpeed += gravity;
    y += ySpeed;
    jumpCooldown --;
  }

  void jump() {
    if (jumpCooldown <= 0 ) {
      ySpeed -= JUMP_STRENGTH;
      jumpCooldown = 10;
    }
  }
  boolean collision(){
   if(y >= height - BIRD_SIZE){
    return true; 
   }
   
   for(int i = 0; i < obs.size(); i++){
     //checks if within x param for obsticle
     if(obs.get(i).xPos <= x && obs.get(i).xPos+OBSTICLE_WIDTH >= x){
       float gapY = obs.get(i).gap;
       
       if(y <= gapY- (GAP_WIDTH/2)){
        return true; 
       }
       if(y+BIRD_SIZE >= gapY + (GAP_WIDTH/2)){
        return true; 
       }
       
       
     }
   }
    return false;
  }
}
