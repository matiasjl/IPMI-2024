//Coordenadas
float coordenadaX0;
float coordenadaY0;
float ultimaCoordenadaY0;
float velocidadMovimiento;

//Variables de botones
float radioBoton;
float botonBackPosX;
float botonBackPosY;
float botonNextPosX;
float botonNextPosY;
PImage botonNext, botonBack;
boolean isPlayingAnimationNext;
boolean isPlayingAnimationBack;


//Imagenes de diapositivas
PImage diapo1, diapo2, diapo3, diapo4, diapo5;
PImage cronometro;

//Variables de herramientas adicionales
float pantallaActual;




void setup() {
  size(360, 640);
  coordenadaX0 = 0;
  coordenadaY0 = 0;
  velocidadMovimiento = 5;

  //Carga de Imagenes de botones
  botonNext = loadImage("BotonNext.png");
  botonBack = loadImage("BotonBack.png");

  //Carga de Imagenes de diapositivas
  diapo1 = loadImage("Diapositiva1.png");
  diapo2 = loadImage("Diapositiva2.png");
  diapo3 = loadImage("Diapositiva3.png");
  diapo4 = loadImage("Diapositiva4.png");
  diapo5 = loadImage("Diapositiva5.png");
  cronometro = loadImage("cronometro.png");

  //Herramientas adicionales
  pantallaActual = 0;
  if (pantallaActual == 0) coordenadaY0 = 0;
  if (pantallaActual == 1) coordenadaY0 = -height;
  if (pantallaActual == 2) coordenadaY0 = -height*2;
  if (pantallaActual == 3) coordenadaY0 = -height*3;
  if (pantallaActual == 4) coordenadaY0 = -height*4;
  if (pantallaActual >= 5) println("ERROR! NO EXISTE LA PANTALLA: " + pantallaActual);
}





void draw() {
  background(255);

  //Diapositiva 1 ---------------------------------------------------------
  image(diapo1, coordenadaX0, coordenadaY0);
  //Rectangulo
  rectMode(CENTER);
  fill(255, 243, 0);
  noStroke();
  rect(width/2, coordenadaY0 + 210, 300, 100);
  //Texto
  textSize(14);
  fill(5, 12, 70);
  textAlign(CENTER, CENTER);
  text("Arte e interactividad", width/2, coordenadaY0 + 180);
  text("Una historia de amor", width/2, coordenadaY0 + 198);
  //-----------------------------------------------------------------------

  //Diapositiva 2 ---------------------------------------------------------
  float puntoY0Diapo2 = coordenadaY0+height;
  image(diapo2, coordenadaX0, puntoY0Diapo2);
  //-----------------------------------------------------------------------

  //Diapositiva 3 ---------------------------------------------------------
  float puntoY0Diapo3 = coordenadaY0+(height*2);
  image(diapo3, 0, puntoY0Diapo3);
  //Texto
  fill(5, 12, 70);
  text("Conversaciones", width/2 + 25, puntoY0Diapo3 + 48);
  text("Creativas", width/2 + 25, puntoY0Diapo3 + 63);
  //-----------------------------------------------------------------------

  //Diapositiva 4 ---------------------------------------------------------
  float puntoY0Diapo4 = coordenadaY0+(height*3);
  image(diapo4, 0, puntoY0Diapo4);
  textAlign(LEFT);
  fill(5, 12, 70);
  text("... y que crean narrativa", width/2 -15, puntoY0Diapo4 + 345);
  text("sin texto.", width/2 -15, puntoY0Diapo4 + 365);
  //-----------------------------------------------------------------------

  //Diapositiva 5 ---------------------------------------------------------
  float puntoY0Diapo5 = coordenadaY0+(height*4);
  image(diapo5, 0, puntoY0Diapo5);
  textAlign(CENTER, CENTER);
  text("Interacción + Arte", width/2-80, puntoY0Diapo5 + 25);
  
  //Cronometro
  pushStyle();
  imageMode(CENTER);
  image(cronometro, width/2+10, puntoY0Diapo5 + height-60);
  popStyle();
  //-----------------------------------------------------------------------



  //Botones (General) ---------------------------------------------------
  pushStyle();
  radioBoton = 25;
  float offsetBoton = 15;
  botonBackPosX = width-radioBoton-offsetBoton;
  botonBackPosY = radioBoton+offsetBoton;
  botonNextPosX = width-radioBoton-offsetBoton;
  botonNextPosY = height-radioBoton-offsetBoton;

  //Botones sin interactuar
  tint(255, 80);
  imageMode(CENTER);
  image(botonBack, botonBackPosX, botonBackPosY);
  image(botonNext, botonNextPosX, botonNextPosY);

  //Interaccion de botones si el mouse esta sobre ellos
  if (dist(mouseX, mouseY, botonBackPosX, botonBackPosY) < radioBoton) {
    tint(255, 255);
    image(botonBack, botonBackPosX, botonBackPosY);
  }
  if (dist(mouseX, mouseY, botonNextPosX, botonNextPosY) < radioBoton) {
    tint(255, 255);
    image(botonNext, botonNextPosX, botonNextPosY);
  }
  popStyle();
  //-----------------------------------------------------------------------



  //Animacion de pasar pantalla -------------------------------------------

  //Animación de subir
  if (isPlayingAnimationNext == true && pantallaActual != 0) {
    if (coordenadaY0 <= ultimaCoordenadaY0 - height) {
      isPlayingAnimationNext = false;
      ultimaCoordenadaY0 = coordenadaY0;
      mensajesConsola();
      return;
    }
    coordenadaY0 -= velocidadMovimiento;
  }

  //Animación de bajar
  if (isPlayingAnimationBack == true && pantallaActual <= 5) {
    if (coordenadaY0 >= ultimaCoordenadaY0 + height) {
      isPlayingAnimationBack = false;
      ultimaCoordenadaY0 = coordenadaY0;
      mensajesConsola();
      return;
    }
    coordenadaY0 += velocidadMovimiento;
  }
  //-----------------------------------------------------------------------
}




void mouseClicked() {
  //Boton de "regreso"
  if (dist(mouseX, mouseY, botonBackPosX, botonBackPosY) < radioBoton)
  {
    if (isPlayingAnimationBack == false && pantallaActual != 0) {
      isPlayingAnimationBack = true;
      pantallaActual--;
      mensajesConsola();
    }
  }
  //Boton de "siguiente"
  if (dist(mouseX, mouseY, botonNextPosX, botonNextPosY) < radioBoton)
  {
    if (isPlayingAnimationNext == false && pantallaActual <= 5) {
      isPlayingAnimationNext = true;
      pantallaActual++;
      mensajesConsola();
    }
  }
}

void mensajesConsola() {
  println("------------------------------------------");
  println("pantalla: " + pantallaActual);
  println("coordenadaY0: " + coordenadaY0);
  println("ultimaCoordenadaY0: " + ultimaCoordenadaY0);
}
