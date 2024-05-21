
/*

  - condicionales if
  - - Logica de estados (codigo clase pasada)
  - - Botones zonas rectangulares

*/


//Boton rectangular by Diego Jimenez
int esquinaX1 = 200;
int esquinaY1 = 100;
int ancho = 200;
int alto = 100;

//Boton Circular
int centroX = 300;
int centroY = 400;
int diametro = 100;
float distanciaMouseBoton;



void setup() {
  size(600, 600);
}

void draw() {
  background(100);

  //Dibujo de boton rectangular
  rect (esquinaX1, esquinaY1, ancho, alto);

  circle(centroX, centroY, diametro);
  line(mouseX, mouseY, centroX, centroY);
  line(centroX - diametro/2, centroY, centroX + diametro/2, centroY);
  distanciaMouseBoton = dist(mouseX, mouseY, centroX, centroY);
}

void mousePressed() {
  if (mouseX > esquinaX1 && mouseX < esquinaX1+ancho && mouseY > esquinaY1 && mouseY < esquinaY1 + alto) {
    println("se presiono el rectangular");
    fill(255, 0, 0);
    //estado = 0;
  }

  if (distanciaMouseBoton < diametro/2) {
    println("se presiono el circular");
    fill(0, 255, 0);
  }
}
