int channel = 1;
boolean power = false;

//this code is a rough copy of Jeffery Thompson's collision detection examples
float px = 0;
float py = 0;
  
float c1x = 356;//circle center position x
float c1y = 311;//circle center position y
float radius1 = 12;//cricle radius
  
float c2x = 356;//circle center position x
float c2y = 331;//circle center position y
float radius2 = 12;//cricle radius

float rx = 348;
float ry = 285;
float rw = 16;
float rh = 12;

void setup(){
  size(512, 512);
  colorMode(RGB);
  background(245, 245, 220); //beige
}

void tv(){
  //main outer shell
  textSize(10);
  fill(62, 39, 35);
  rectMode(CENTER);
  rect(width / 2, height / 2, (width * 2) / 3, height / 2, 5);
  //perimeter of screen
  fill(158, 158, 158);
  rect(width / 2 - 30, height / 2, (width / 3) + 50, (height / 3) + 30, 5);
  //inner screen
  //used as backdrop for images
  fill(0, 0, 0);
  rect(width / 2 - 30, height / 2, (width / 3) + 35, (height / 3) + 15, 10);
  //panel
  fill(93, 64, 55);
  rect(width / 2 + 120, height / 2, (width / 9), (height / 3) + 30, 5);
  //panel part 2
  //radio wave booglaoo
  fill(158, 158, 158);
  rect(width / 2 + 120, (height / 3) * 2 - 30, (width / 9), (height / 7), 5);
  //panel pert 3
  //processing fills me with glee
  fill(62, 39, 35);
  rect(width / 2 + 100, (height / 3) * 2 - 30, (width / 31), (height / 8), 5);
  //the buttons
  fill(158, 158, 158);
  rect(width / 2 + 100, (height / 3) * 2 - 50, (width / 40 + 4), height / 40, 5);
  //power button label
  fill(0,0,0);
  text("POWER", width / 2 + 110, (height / 3) * 2 - 45);
  //ellipse(width / 2 + 100, (height / 3) * 2 - 50, (width / 40), (height / 40));
  //ellipse(width / 2 + 100, (height / 3) * 2 - 30, (width / 40), (height / 40));
  fill(158, 158, 158);
  circle(width / 2 + 100, (height / 3) * 2 - 30, (width / 40));
  fill(0,0,0);
  text("CHN UP", width / 2 + 110, (height / 3) * 2 - 25);
  //ellipse(width / 2 + 100, (height / 3) * 2 - 10, (width / 40), (height / 40));
  fill(158, 158, 158);
  circle(width / 2 + 100, (height / 3) * 2 - 10, (width / 40));
  fill(0,0,0);
  text("CHN DN", width / 2 + 110, (height / 3) * 2 - 5);
  //tv legs
  fill(109, 76, 65);
  triangle(96, 384, 126, 384, 80, 600);
  triangle(416, 384, 386, 384, 432, 600);
  
}

void channelControl(){
  //cycle through screen images
  if(channel == 1){
    //draws the image described in the method drawChannelOne()
    fill(255, 0, 0);
    rect(width / 2 - 30, height / 2, (width / 3) + 35, (height / 3) + 15, 10);
    //drawChannelOne();
  }
  if(channel == 2){
    //draws the image described in the method drawChannelTwo()
    fill(0, 255, 0);
    rect(width / 2 - 30, height / 2, (width / 3) + 35, (height / 3) + 15, 10);
    //drawChannelTwo();
  }
  if(channel == 3){
    //draws the image described in the method drawChannelThree()
    fill(0, 0, 255);
    rect(width / 2 - 30, height / 2, (width / 3) + 35, (height / 3) + 15, 10);
    //drawChannelThree();
  }
}

void buttonChannelUp(){
  //controls behavior when buttonChannelUp is clicked
  channel += 1;
  if(channel > 3){
    channel = 1;
  }
  //puts a darker circle over the button, to give the appearance of being pressed
  fill(97, 97, 97);
  circle(width / 2 + 100, (height / 3) * 2 - 30, (width / 40));
  delay(100);
}

void buttonChannelDown(){
  //controls behavior when buttonChannelDown is clicked
  channel -= 1;
  if(channel < 1){
    channel = 3;
  }
  //puts a darker circle over the button, to give the appearance of being pressed
  fill(97, 97, 97);
  circle(width / 2 + 100, (height / 3) * 2 - 10, (width / 40));
  delay(100);
  
}

//this code full-on COPIED from Jeffery Thompson's collision detection
//http://jeffreythompson.org/collision-detection/point-circle.php
boolean pointCircle(float px, float py, float cx, float cy, float r) {

  // get distance between the point and circle's center
  // using the Pythagorean Theorem
  float distX = px - cx;
  float distY = py - cy;
  float distance = sqrt( (distX*distX) + (distY*distY) );

  // if the distance is less than the circle's
  // radius the point is inside!
  if (distance <= r) {
    return true;
  }
  return false;
}

//this code is ALSO COPIED from Jeffery Thompson's collision detection
//http://jeffreythompson.org/collision-detection/point-rect.php
boolean pointRect(float px, float py, float rx, float ry, float rw, float rh) {
  // is the point inside the rectangle's bounds?
  if (px >= rx &&        // right of the left edge AND
      px <= rx + rw &&   // left of the right edge AND
      py >= ry &&        // below the top AND
      py <= ry + rh) {   // above the bottom
        return true;
  }
  return false;
}

void mouseClicked(){
  boolean hit0 = pointRect(px, py, rx, ry, rw, rh);
  boolean hit1 = pointCircle(px, py, c1x, c1y, radius1);
  boolean hit2 = pointCircle(px, py, c2x, c2y, radius2);
  if(hit0){
    power = !power;
    println("Channel", channel);
    fill(97, 97, 97);
    rect(width / 2 + 100, (height / 3) * 2 - 50, (width / 40 + 4), height / 40, 5);
    delay(100);
    
  }
  
  //button control - channel up
  //darken button while mouse clicked in button location
  //clicked button color to (97, 97, 97)
  if(hit1){
    buttonChannelUp();
    println("Channel", channel);
    //prevents rapid channel switching
    delay(100);
  }
  
  //button control - channel down
  //darken button while mouse clicked in button location
  //clicked button color to (97, 97, 97)
  if(hit2){
    buttonChannelDown();
    println("Channel", channel);
    //prevents rapid channel switching
    delay(100);
  }
}

void draw(){
  px = mouseX;
  py = mouseY;
  //draw tv frame
  tv();
  //draw image on screen
  if(power){
      channelControl();
      fill(255, 0, 0);
      circle(width / 2 + 100, (height / 3) * 2 - 50, 3);
  }
}
