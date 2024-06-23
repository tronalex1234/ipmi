PImage img; 

void setup() {
  size(800, 400);
  background(0);
  //strokeWeight(0);
  img = loadImage("lineas.jpg");  // Cargar la imagen
}

void draw() {
  background(255);
  image(img, 0,0);  // Dibujar la imagen en la posición (0, 0)
  
  float espacio = map(mouseX, 0, width, 10, 30);  // Mapear mouseX para controlar el espaciado
  int dashLength = 20;
  
  for (float x = -width; x < width * 2; x += espacio) {
    for (float y = -height; y < height * 2; y += espacio) {
      Dibujarlineaconguiones(x, y, espacio, dashLength);
    }
  }
}

void Dibujarlineaconguiones(float lineaX, float lineaY, float espacio, int dashLength) {
  stroke(0);
  line(lineaX, lineaY, lineaX + dashLength, lineaY + dashLength);
  
  for (int i = 0; i < dashLength; i += 5) {
    line(lineaX + i, lineaY + i, lineaX + i - 10, lineaY + i + 10);
  }
}
