/*void draw(){
}*/
//RGB values for backGround
int bGR = 79;
int bGG = 195;
int bGB = 247;
//RGB values for fish
int fR = int(random(0, 256));
int fG = int(random(0, 256));
int fB = int(random(0, 256));

void setup(){
  size(640, 640);
  colorMode(RGB);
  background(bGR, bGG, bGB);
  surface.setTitle("Move mouse to move fish, click to change fish, press a key to change background");
}

void changeBackground(){
  int ran = int(random(0, 3));
  if(ran == 0){
    bGR = 38;
    bGG = 166;
    bGB = 154;
  }
  else if( ran == 1){
    bGR = 128;
    bGG = 222;
    bGB = 234;
  }
  else{
    bGR = 79;
    bGG = 195;
    bGB = 247;
  }
  background(bGR, bGG, bGB);
  //prevents the ocean color change from occuring every frame
  delay(250);
}

void changeFish(){
  while(fR == bGR && fG == bGG && fB == bGB){
    fR = int(random(0, 256));
    fG = int(random(0, 256));
    fB = int(random(0, 256));
  }
  //fish changes color pretty quickly
  //also prevents background and fish from being same color
}

void fish(){
  fill(fR, fG, fB);
  ellipse(mouseX, mouseY, 50, 25);
  
  //if mouse is moving right
  if(mouseX > pmouseX){
    //draws the fish facing to the right
    //tail first
    triangle(mouseX - 45, mouseY - 20, mouseX - 25, mouseY, mouseX - 45, mouseY + 20);
    //then the mouth
    line(mouseX + 25, mouseY, mouseX + 10, mouseY);
    //then the eye
    fill(0, 0, 0);
    ellipse(mouseX + 15, mouseY - 5, 3, 3);
  }
  
  //if mouse is moving left
  else{
    //draws the fish facing to the left
    //tail again, on other side
    triangle(mouseX + 45, mouseY - 20, mouseX + 25, mouseY, mouseX + 45, mouseY + 20);
    //another mouth
    line(mouseX - 25, mouseY, mouseX - 10, mouseY);
    //final eye
    fill(0, 0, 0);
    ellipse(mouseX - 15, mouseY - 5, 3, 3);
  }
  //prevents program from drawing a bunch of fish on top of each other
  //fish need their space, after all
  //delay(250);
}
  

void draw(){
  //draws background
  background(bGR, bGG, bGB);
  //draws fish at museX, mouseY
  fish();
  if(mousePressed == true){
    //changes color of the fish
    changeFish();
  }
  if(keyPressed == true){
    //changes background color
    changeBackground();
  }
  
  
}
