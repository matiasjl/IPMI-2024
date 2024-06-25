//Cambio de color usando "for"

float angulo;
float anguloInvertido;
boolean estaManual;

float x;
float radio;
int NumCirculos;

void setup() {
  size(900, 900);
  noStroke();

  x = 150;
  radio = 5;
  NumCirculos = 20;
  
  //Simplificado
  //pushMatrix();
  //fill(0);
  //translate(width/2, height/2);
  //for (int i=0; i< 63; i++) {
  //  ellipse(200, 200,10, 10);
  //  rotate(0.1);
  //}
  //popMatrix();
}



void draw() {
  background(255);
  translate(width/2, height/2);

  for (int i=0; i < NumCirculos; i++) {
    //scale(0.95);//No usar
    rotate(radians(angulo));
    fill(240-(i*8), 20, 20 + (i*3), 200);
    ellipse(x, 0, radio-(i*5), radio-(i*5));
  }

  for (int i=20; i > 0; i--) {
    //scale(0.95);//No usar
    fill(240-(i*8), 20+(i*6), 20 + (i*2), 200);
    rotate(radians(-anguloInvertido));
    ellipse(x*2, 0, radio-(i*5), radio-(i*5));
  }

  //Modo de control
  if (estaManual) {
    //Mapeo
    angulo = map(mouseX, 0, width, 0, 3.14*14.5);
    anguloInvertido = -map(mouseX, width, 0, 3.14*14.5, 0);
  } else {
    //Velocidades
    angulo+= 0.1;
    anguloInvertido-= 0.1;
  }
}


void mousePressed() {
  estaManual = !estaManual;
}
