
// funcion que no retorna valor = tipo void (PARA DIBUJAR)

void grilla( int mod ) {
  for ( int i = 0; i < height; i+=mod ) {  //mod = tamaño de celda
    for ( int j = 0; j < height; j+=mod ) {  //mod = tamaño de celda
      //println( i + " / " + j);
      fill( 255 );
      rect( i, j, mod, mod );
      fill( 0 );
      text( i/mod + " / " + j/mod , i+30, j+30 );
    }
  }
}

// funcion que si retorna valor = tipo int, boolean, float, etc

boolean mouseSobreLaDerecha(){
  if( mouseX > width/2 ){
    return true;
  }else{
    return false;
  }
}
