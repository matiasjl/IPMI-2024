// funciones creadas por el programador

void iniciarVariables() {  //volver mis variables al valor original
  colorDeFondo = color( 255 );
  colorDeBoton = color( 100 );
  posX = 100;
  posY = 100;
  tam = 100;
}

void dibujarMiBoton() {
  pushStyle();
  // OVER: si estoy encima lo pinta de rojo, sino de gris
  if ( estoyDentroDeMiBoton() ) {
    fill( 0, 100, 100);
  } else {
    fill( colorDeBoton );
  }
  rect( posX, posY, tam, tam );
  popStyle();
}

boolean estoyDentroDeMiBoton() {
  boolean resultado = mouseX > posX && mouseX < posX+tam && mouseY > posY && mouseY < posY+tam;
  return resultado;
}

int suma() {
  int i = 1+1;
  return i;
}
