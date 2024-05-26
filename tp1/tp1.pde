PImage img;
void setup() {
  size(800, 400);
  img = loadImage ("michi.jpg");
  background(255);
}
void draw () {
  image(img, 0, 0, 400, 400);
  println(mouseX);
  println(mouseY);
  fill(#837777); //color orejas
  triangle(515, 159, 481, 3, 572, 89);
  triangle(650, 91, 743, 10, 698, 151);
  ellipse(606, 212, 230, 257);
  ellipse(566, 171, 50, 50);
  ellipse(648, 171, 50, 50);
  fill(#EDC04D);//color ojos
  ellipse(562, 170, 40, 40);
  ellipse(644, 170, 40, 40);
  fill(#F7E6F1);//color boca
  ellipse(609, 275, 70, 90);
  line(607, 230, 607, 274);
  line(607, 274, 644, 288);
 line(607, 274, 575, 287);
  line(576, 291, 642, 290);
  ellipse(597, 248, 20, 20);
  ellipse(618, 248, 20, 20); 
  line(518, 294, 518, 399);
  line(696, 293, 695, 399);
  line(607, 230, 607, 230);
  line(593, 86, 596, 201);
  line(617, 201, 617, 152);
  line(617, 152, 604, 131);
  line(604, 131, 616, 101);
  line(616, 101, 593, 87);
  bezier(596,200,540,210,500,300,544,319);
  bezier(616,200,605,200,710,209,686,304);
  line(584,259,562,238);
  line(584,262,556,262);
  line(584,264,564,290);
  line(631,258,646,238);
  line(631,260,655,259);
  line(631,264,655,279);
  fill(#050505);
 ellipse(563,171,19,39);
 ellipse(645,171,19,39);
 line(548,137,505,58);
 line(550,135,550,42);
 line(552,135,585,54);
 line(644,133,627,54);
 line(650,132,664,57);
 line(658,133,700,58);
 ellipse(593,252,8,8);
 ellipse(624,252,8,8);
 
  
  
  
}
