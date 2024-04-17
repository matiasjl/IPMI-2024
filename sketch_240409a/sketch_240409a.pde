
// esto es un comentario, el copilador lo pasa de alto
// funcion( parametro1, parametro2, ... );

// se ejecuta una sola vez, es la "configuracion del programa"
void setup(){
  size( 800, 600 );
}

// se ejecuta 60 fps (si da la compu), es "donde dibujo"
void draw(){
  background( 0, 150, 200 );
  
  fill( 255, 255, 0 );
  circle( 150, 150, 100 );
  
  fill( 0, 100, 0 );
  rect( 0, 500, 800, 100 );
}
