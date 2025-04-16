PImage img;
void setup(){
  size(800, 400);
  background(255);
  img = loadImage("cael1.jpg");
}

void draw(){
  // Cuerpo
 // line(606,180,606,300);
  image(img,50,35,280,320);
  println("X: " + mouseX + " ~ Y: " + mouseY);
  line(400,0,400,400);
  fill(200, 0, 0);
  ellipse(600, 240, 200, 160);
  line(606,180,606,340);
  fill(0);
  ellipse(600,187,8,8);
  ellipse(600,235,8,8);
  ellipse(600,290,8,8);
  noFill();
  
  // Cabeza
  fill(255, 220, 180);
  ellipse(600, 120, 160, 120);

  // Gorro celeste
  fill(0, 180, 200);
  ellipse(600, 79, 114, 36);
  fill(0, 200, 255);
  // rect(520, 130, 160, 50); // opcional para cubrir parte baja del gorro

  // Pompón
  fill(255, 230, 0);
  ellipse(600, 50, 20, 20);

  // Ojos
  fill(255);
  ellipse(580, 120, 40, 40);
  ellipse(620, 120, 40, 40);

  // Pupilas
  fill(0);
  ellipse(585, 120, 8, 8);
  ellipse(625, 120, 8, 8);

  // Manos
  fill(255, 230, 0);
  ellipse(510, 240, 40, 40);
  ellipse(690, 240, 40, 40);

  // Pantalón
  fill(100, 60, 30);
  rect(540, 310, 120, 30);

  // Suela
  fill(0);
  rect(530, 340, 140, 10);

  // Boca
  stroke(0);
  line(590, 150, 610, 150);
  //bezier(266.0,213.0,314.0,257.0,416.0,269.0,478.0,209.0);

}
