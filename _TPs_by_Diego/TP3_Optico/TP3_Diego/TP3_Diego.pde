float posX, posY, radio, angulo;
//No aniden "for" en un draw
//Si se estan complicando mucho con una forma de hacer algo, prueben otra cosa. Hay muchas formas de hacer lo mismo

float distanciaDelPuntoCero;
float puntoCeroX, puntoCeroY;

float contadorCirculos;
float tiempoTranscurrido;
float numeroDeVuelta;
color colorCirculos;



void setup() {
  frameRate(60);
  background(40);
  size (1280, 720);

  //Valores Iniciales
  numeroDeVuelta = 0;
  distanciaDelPuntoCero = 50;
  puntoCeroX = width/2;
  puntoCeroY = height/2;
  colorCirculos = color(255,255,255);
  radio = 2;

  ellipseMode(RADIUS);
  noStroke();
}


void draw() {

  pushMatrix();
  translate(width/2, height/2);
  fill(colorCirculos);
  DibujarCirculos();
  popMatrix();

  if (numeroDeVuelta >= 17) {
    Reiniciar();
    CambiarColor();
  }

  ellipse((width/2), (height/2), radio, radio);
  tiempoTranscurrido += 6;//!!!Velocidad!!!
  //Debug();
}





void DibujarCirculos() {
  for (int i=0; i < tiempoTranscurrido; i++) {

    float angulosEntreCirculos = (360/distanciaDelPuntoCero) + radio;
    angulo = i * angulosEntreCirculos;
    rotate(i);

    //Coordenadas polares a rectangulares
    //x = coseno(anguloEnRadianes) * distancia del punto (0,0)
    //y = seno(anguloEnRadianes) * distancia del punto (0,0)
    posX = cos(radians(angulo)) * distanciaDelPuntoCero;
    posY = sin(radians(angulo)) * distanciaDelPuntoCero;
    ellipse(posX, posY, radio, radio);

    if (angulo >= 360) ComenzarNuevaVuelta();
  }
}

void ComenzarNuevaVuelta() {
  tiempoTranscurrido = 0;
  distanciaDelPuntoCero += 15;
  numeroDeVuelta++;
}

void Reiniciar() {
  numeroDeVuelta = 0;
  distanciaDelPuntoCero = 50;
  tiempoTranscurrido = 0;
}

void CambiarColor() {
  colorCirculos = color(random(0, 255), random(0, 255), random(0, 255) );
}

void Debug() {
  pushStyle();
  rectMode(CENTER);
  rect(width/2, height-100, 250, 100);
  fill(0);
  textSize(20);
  textAlign(CENTER, CENTER);
  text("distancia Del Punto Cero: " + distanciaDelPuntoCero, width/2, height-100);
  text("angulo: " + angulo, width/2, height-80);
  text("vuelta: " + numeroDeVuelta, width/2, height-60);
  popStyle();
}
