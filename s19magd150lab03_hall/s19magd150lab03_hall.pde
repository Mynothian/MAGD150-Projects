float r = 0.0, g = 0.0, b = 0.0;

void setup(){
size(512, 512);
background(125);
frameRate(240); //higher frameRate for smoother drawing
//max *usable* framerate depends on monitor refresh rate
}

void draw(){
  if(r > 255.0){
    r = 0;
    println("Red reset!");
  }
  if(g > 255.0){
    g = 0;
    println("Green reset!");
  }
  if(b > 255.0){
    b = 0;
    println("Blue reset!");
  }
  stroke(r, g, b);
  line(width/2, height/2, mouseX, mouseY);
  int ran = int(random(0, 3));
  if(ran == 0){
    r = r + 1;
    g = g * 2;
    b = b / 2;
  }
  else if(ran == 1){
    r = r * 2;
    g = g / 2;
    b = b + 1;
  }
  else{
    r = r / 2;
    g = g + 1;
    b = b * 2;
  }
}
