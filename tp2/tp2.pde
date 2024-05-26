//(comision 1) Alexander Chapilliquen Cardenas//
PImage pantalla1;
PImage pantalla2;
PImage pantalla3;
int pantalla = 1;
int tiempoInicio;
float y = 50;
float x = 50;
float velocidad = 1;
PFont myFont;

void setup() {
  size(640, 480);
  pantalla1 = loadImage("soul1.jpg");
  pantalla2 = loadImage("soul2.jpg");
  pantalla3 = loadImage("soul3.jpg");
  tiempoInicio = millis();
  myFont = loadFont("FreestyleScript-Regular-70.vlw");
  fill(#F3FC05);
  textFont(myFont);
}

void draw() {
  background(255);

  if (millis() - tiempoInicio >= 7000) {
    pantalla++;
    if (pantalla > 3) {
      pantalla = 3;
    }
    tiempoInicio = millis();
  }

  if (pantalla == 1) {
    image(pantalla1, 0, 0, width, height);
    text("“Better Call Saul”, la precuela de “Breaking Bad”, vuelve a Netflix.", y - 70, 200, 520, 200);
    y = y + velocidad;
  } else if (pantalla == 2) {
    image(pantalla2, 0, 0, width, height);
    text("Better Call Saul sigue la transformación de Jimmy McGill (Bob Odenkirk), un ex estafador que intenta convertirse en un abogado respetable.", 135, x, 400, 400);
    x += velocidad;
  } else if (pantalla == 3) {
    image(pantalla3, 0, 0, width, height);
    text("El programa se estrenó en el canal AMC el 8 de febrero de 2015.", 280, 130, 410, 400);
    x += velocidad;
    y += velocidad;
    if (x > 1) {
      velocidad = 0;
    }
    fill(0); // Asegurarse de llenar el rectángulo de reinicio con color negro antes
    rect(200, 395, 240, 45);
    fill(255); // Cambiar el color a blanco para el texto de reinicio
    text("REINICIAR", 200, 430);
  }
}

void mousePressed() {
  if (mouseX > 150 && mouseX < 605 && mouseY > 400 && mouseY < 445) {
    pantalla = 1;
    tiempoInicio = millis();
    y = 50;
    x = 50;
    velocidad = 1;
  }
}
