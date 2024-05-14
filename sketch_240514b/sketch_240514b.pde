
// diagrama de estados, o como armar una logica de pantallas para tp2
// parte 2: manejo con tiempo con frameCount

String estado;  //variable global de texto
//int e;  //podria ser entera tambien

void setup() {
  size( 600, 400 );
  textSize( 42 );
  textAlign( CENTER, CENTER );

  estado = "menu";
}

void draw() {
  background( 0 );
  //println( frameCount/60 );  // segundos no exacto
  //println( frameRate );  // velocidad real del draw

  // ---------------------------------------------------------
  // ESTADOS

  //if( estado == "menu" ){
  if ( estado.equals("menu") ) {  //expresion correcta
    background( 200, 0, 0 );
    text( "MENU", width/2, height/2 );

    // EVENTO POR TIEMPO
    if ( frameCount/60 >= 5 ) // si pasaron 5 segundos desde el inicio del draw
      estado = "juego";

    // estado #2
  } else if ( estado == "juego" ) {
    background( 200, 200, 0 );
    text( "JUEGO", width/2, height/2 );
    
  } else if ( estado == "ganar" ) {
    background( 200, 0, 200 );
    
    text( "GANAR", width/2, height/2 );
  } else if ( estado == "perder" ) {
    background( 0, 200, 200 );
    text( "PERDER", width/2, height/2 );
    
  }
}

void keyPressed() {
  //cambio la variable estado
  estado = "ganar";
  println( "aprete una tecla" );
}
void mousePressed() {
  //cambio la variable estado
  estado = "perder";
  println( "aprete el mouse" );
}
