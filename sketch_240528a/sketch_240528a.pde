// dudasTP1: boolean, ctrl+t, else if, reset var

// declarar las variables (globales)
boolean estoySobreBoton;  //true or false
boolean debug = true;
float d, r;  //distancia y radio

void setup() {
  size(600, 600 );
  textSize( 30 );

  // asignar valores de variables
  estoySobreBoton = false;
  println(estoySobreBoton);
  r = 50;
}

void draw() {
  background( 200 );

  //estoySobreBoton = ( mouseX < width/2 );  //asigno expresion racional a una variable booleana
  
  // ------------------------------------------------
  // BOTON CALCULOS
  d = dist(mouseX, mouseY, width/2, height/2 );
  estoySobreBoton = d < r;  // IMPORTANTISIMO
  
  // ------------------------------------------------
  // BOTON DIBUJO 
  //if ( estoySobreBoton == true ) {  //igualacion redundante
  if ( estoySobreBoton ) {  //si es true
    //background(0);
    fill(200, 0, 0);
  } else {  //si es false
    //background(255);
    fill(100);
  }
  // dibujo mi boton
  circle( width/2, height/2, r*2 );
  // dibujo linea
  line( mouseX, mouseY, width/2, height/2 );

  // ------------------------------------------------
  // mi panel de debug de variables
  if ( debug ) {
    text( "mouseX: " + mouseX, 100, 100 );
    text( "mouseY: " + mouseY, 100, 125 );
    text( "dist: " + d, 100, 150 );    
    text( "radio: " + r, 100, 175 );    
  }
  println(estoySobreBoton);

}

void keyPressed() {
  estoySobreBoton = !estoySobreBoton;  //la negacion de su valor
  println(estoySobreBoton);

  if ( key == 'd' ) {
    debug = !debug;
    //if( estoySobreBoton ){
      //println(true);
    //}
  }
}
