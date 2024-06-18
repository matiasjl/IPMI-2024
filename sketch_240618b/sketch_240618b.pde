// Quedan 3 clases !!
// para terminar IPMI

void setup() {
  size( 600, 600 );
  frameRate( 1 );  // fines pedagogicos
  textAlign( CENTER, CENTER );
}

void draw() {
  background(200);

  // ( variable, limite, actualizacion )
  for ( int i = 0; i < 10; i++ ) {
    // repite en contenido entre llaves
    line( i*60, 0, i*60, height );
    fill( 255 );
    float py = random(250, 350); 
    circle( i*60, py, random(20, 40) );
    // visualizar los indices
    println( i + " / " + i*60 );
    fill( 0 );
    text( i, i*60, py );
  }
  
  noLoop();  // fines pedagogicos
}



/*
  i    i*60
  0    0
  1    60
  2    120
  3    180
  4    240
  5    300
  ...
  9    540
  


*/
