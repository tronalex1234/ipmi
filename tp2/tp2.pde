PFont fuente;
PImage[] imagenes = new PImage[3];
String[] textos = {
  "Bienvenidos a la presentación de \n baki una persona re fuerte",
  "Explora este mundo mágico",
  "Gracias por tu atención"
  "
};

int estado = 0; // 0: inicio, 1-3: pantallas, 4: final
int cuadrosPorPantalla = 240; // 4 segundos por pantalla
int cuadroInicio;
boolean presentacionIniciada = false;

void setup() {
  size(640, 480);
  fuente = createFont("comic.vlw", 32);
  textFont(fuente);

  // Carga tus imágenes (reemplaza con tus propias imágenes)
  imagenes[0] = loadImage("imagen 1.jpg");
  imagenes[1] = loadImage("imagen 2.jpg");
  imagenes[2] = loadImage("imagen 3.jpg");

  cuadroInicio = frameCount;
}

void draw() {
  background(0);
  
  if (!presentacionIniciada) {
    mostrarBotonInicio();
  } else if (estado >= 1 && estado <= 3) {
    mostrarPantalla(estado - 1);
    if (frameCount - cuadroInicio > cuadrosPorPantalla) {
      estado++;
      cuadroInicio = frameCount;
    }
  } else if (estado == 4) {
    mostrarFinal();
  }
}

void mostrarBotonInicio() {
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(24);
  text("Haz clic para iniciar la presentación", width/2, height/2);
}

void mostrarPantalla(int i) {
  imageMode(CENTER);
  image(imagenes[i], width/2, height/2 - 50, 400, 300);

  float alpha = map(sin(radians(frameCount * 2)), -1, 1, 100, 255);
  fill(255, alpha);
  textAlign(CENTER);
  textSize(28);
  text(textos[i], width/2, height - 100);
}

void mostrarFinal() {
  background(0);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(28);
  text("Fin de la presentación", width/2, height/2 - 50);
  textSize(20);
  text("Haz clic para reiniciar", width/2, height/2 + 20);
}

void mousePressed() {
  if (!presentacionIniciada) {
    presentacionIniciada = true;
    estado = 1;
    cuadroInicio = frameCount;
  } else if (estado == 4) {
    estado = 0;
    presentacionIniciada = false;
  }
}
