// tema: intro a funciones + RESET
// sueltos: dist, map, hsb, &&||
// OBJETIVO: programa que cambie color de fondo con boton cuadrado
// version 2 COMPLETADO con boton cuadrado movil ;)
// ---------------------------------------------

// declaro mis variables
color colorDeFondo;
color colorDeBoton;
float posX, posY, tam;  // de mi boton

void setup(){
  size( 600, 600 );
  colorMode( HSB, 360, 100, 100 );
  
  // doy valor INICIAL a mis variables
  iniciarVariables();
}

void draw(){
  background( colorDeFondo );
  
  // dibujo mi boton cuadrado
  dibujarMiBoton();
  
}

void mousePressed(){
  // funcionalidad de mi boton = zona cuadrado
  if( estoyDentroDeMiBoton() ){
    // cambio el color del fondo, SOLO EL HUE
    colorDeFondo = color( random(0, 60), 70, 90 );
    
    // cambio la posicion del boton jeje
    posX = random(tam/2, width-tam);
    posY = random(tam/2, width-tam);
  }
}


void keyPressed(){
  if( key == ' ' )
    iniciarVariables();
}
