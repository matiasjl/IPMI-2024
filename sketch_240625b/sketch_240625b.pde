
// + grillas con for
// + funciones con param
// + trabajo con indices
// + dist() y map()
// + funcion reiniciar()

void setup(){
  size( 600, 600 );
  textSize( 24 );
  //ellipseMode( CORNER ); // funciona como un rect
  
  //frameRate( 1 );
}

void draw(){
  background ( 255 );
  
  grillaCant( 10 );
  
  
  
  //noLoop();
}

void keyPressed(){
  reiniciar();
}
