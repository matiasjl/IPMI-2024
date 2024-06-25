
// funcion que no retorna valor = tipo void (PARA DIBUJAR)

void grilla( int mod, int relleno ) {
  for ( int i = 0; i < height; i+=mod ) {  //mod = tamaño de celda
    for ( int j = 0; j < height; j+=mod ) {  //mod = tamaño de celda
      //calculo de tamaño
      float d = dist( i+mod/2, j+mod/2, width/2, height/2 );
      float tam = map( d, 0, 200, mod, 0 );
      
      //println( i + " / " + j);
      fill( relleno );
      //ellipse( i+mod/2, j+mod/2, mod, mod );  //+mod/2 = lo corro porque es un circulo que se dibuja desde el centro (y no un cuadrado que se dibuja desde la esquina superior izquierda)
      ellipse( i+mod/2, j+mod/2, tam, tam );
      fill( 255 );
      text( i/mod + " / " + j/mod , i+10, j+20 );
    }
  }
}

void grillaCant( int cant ) {
  int mod = width / cant;  //tamano celda (modulo)
  
  for ( int i = 0; i < cant; i++ ) {
    for ( int j = 0; j < cant; j++ ) {
      // celdas: calculo color
      if( i == j ){  //1) diagonal descendente
        fill( 200, 0, 0 );
      }else if( i+j == cant-1 ){  //2) diagonal asendente
        fill( 100, 0, 0 );
      }else if( (i+j)%2 == 0 ){    //3) par=0 e impar=1
        fill( 100 );
      }else{
        fill( 200 );
      }
      
      //celdas: ajustar tamano con dist() y map()
      float d = dist( mouseX, mouseY, i*mod, j*mod );
      float tam = map( d, 0, 848, mod/2, mod*2 );  //848 es la diagonal, mod es igual a 60
      
      //celdas: dibujo
      if( (i+j)%2 == 0 ){  //par = rect
        rect( i*mod, j*mod, tam, tam );
      }else{  // impar == circle
        circle(i*mod+mod/2, j*mod+mod/2, tam );
      }
      
      // textos
      fill( 50 );
      text( i + " / " + j , i*mod+10, j*mod+40 );
    }
  }
}

void reiniciar(){
  mouseX = 0;
  mouseY = 0;
}
