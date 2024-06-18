// Quedan 3 clases !!
// para terminar IPMI

void setup() {
  size( 600, 600 );
  frameRate( 1 );
}

void draw() {
  background(200);

  // ( variable, limite, actualizacion )
  for ( int i = 0; i < 3; i++ ) {
    // repite en contenido entre llaves
    circle( random(width), random(height), random(20, 40) );
  }
}
