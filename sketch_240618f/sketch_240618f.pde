
// grillas con for + funciones con param

void setup(){
  size( 600, 600 );
  //frameRate( 1 );
}

void draw(){
  background ( 255 );
  
  
  //funcion de usuario
  grilla( 40, 0 );  //40 pixeles = 15 celdas x lado
  
  // println( mouseSobreLaDerecha() );  //funcion con param
  
  noLoop();
}
