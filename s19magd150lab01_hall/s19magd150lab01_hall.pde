//size, x, y
size(256, 256);
//color, 0-255
background(20);

//no outline
noStroke();
//stroke, color, 0-255
//stroke(0);

//background, star field
stroke(255);
fill(255);
ellipseMode(CENTER);
ellipse(242, 216, 3, 3);
line(242, 216, 227, 216); //first x - 15 = second x, reflects ship's speed
ellipse(252, 234, 3, 3);
line(252, 234, 237, 234);
ellipse(170, 46, 3, 3);
line(170, 46, 155, 46);
ellipse(67, 63, 3, 3);
line(67, 63, 52, 63);
ellipse(24, 94, 3, 3);
line(24, 94, 9, 94);
ellipse(8, 4, 3, 3);
line(8, 4, 0, 4);
ellipse(106, 118, 3, 3);
line(106, 118, 91, 118);
ellipse(16, 30, 3, 3);
line(16, 30, 1, 30);
ellipse(79, 203, 3, 3);
line(79, 203, 64, 203);
ellipse(73, 29, 3, 3);
line(73, 29, 58, 29);
ellipse(98, 34, 3, 3);
line(98, 34, 83, 34);
ellipse(142, 110, 3, 3);
line(142, 110, 127, 110);

ellipse(5, 141, 3, 3);
line(5, 141, 0, 141);
ellipse(204, 185, 3, 3);
line(204, 185, 189, 185);
ellipse(225, 15, 3, 3);
line(225, 15, 215, 15);
ellipse(214, 202, 3, 3);
line(214, 202, 199, 202);
ellipse(36, 146, 3, 3);
line(36, 146, 21, 146);
ellipse(245, 51, 3, 3);
line(245, 51, 230, 51);
ellipse(84, 220, 3, 3);
line(84, 220, 69, 220);
ellipse(8, 81, 3, 3);
line(8, 81, 0, 81);
ellipse(181, 4, 3, 3);
line(181, 4, 166, 4);
ellipse(33, 41, 3, 3);
line(33, 41, 18, 41);
ellipse(244, 138, 3, 3);
line(244, 138, 229, 138);
ellipse(50, 111, 3, 3);
line(50, 111, 35, 111);

//disable spaceship (TEMPORARY)

//spaceship, top/bottom fins
fill(165);
stroke(0);
rectMode(CENTER);
//rect, center x, center y, width, height)
rect(56, 145, 64, 24);
rect(56, 195, 64, 24);

//spaceship, body
//color, 0-255
fill(205);
//ellipse, from center point
ellipseMode(CENTER);
//ellipse, center x, center y, width, height
ellipse(128, 170, 128, 64);

//spaceship, side fin
fill(165);
rectMode(CENTER);
rect(56, 170, 64, 8);

//spaceship, window
//redundant, but good to have
fill(165);
ellipseMode(CENTER);
ellipse(150, 170, 24, 24);
//second part of window
fill(65);
ellipseMode(CENTER);
ellipse(150, 170, 18, 18);

//spaceship, front splitter
fill(165);
triangle(185, 155, 185, 185, 230, 170);

//spaceship, rivets
stroke(0);
point(139, 170);
point(160, 170);
point(150, 159);
point(150, 180);

//End disable spaceship(TEMPORARY)
