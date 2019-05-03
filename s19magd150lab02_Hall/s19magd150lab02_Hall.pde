size(512, 512);

colorMode(RGB);
background(85, 107, 47); //dark olive green

colorMode(HSB, 100);
stroke(0, 0, 0);         //black
colorMode(RGB);
fill(#FFFF00);           //yellow
arc(256, 256, 384, 384, 0, TWO_PI);
triangle(256, 448, 276, 468, 236, 468);
noStroke();
fill(#FFFFFF);           //white
quad(320, 128, 360, 128, 370, 168, 330, 168);
