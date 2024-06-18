// Quedan 3 clases !!
// para terminar IPMI

int tam;

void setup() {
  size( 600, 600 );
  frameRate( 5 );  // fines pedagogicos
  textAlign( CENTER, CENTER );
  textSize( 20 );
  colorMode( HSB, 360, 100, 100 );
  
  tam = 10;
}

void draw() {
  background(200);

  // ( variable, limite, actualizacion )
  for ( int i = 0; i < 10; i++ ) {
    float relleno = map( i, 0, 10, 0, 360 );
    
    // repite en contenido entre llaves
    line( i*60, 0, i*60, height );
    float py = random(250, 350); 
    fill( relleno, 100, 100 );
    circle( i*60, py, tam );
    
    // visualizar los indices
    println( i + " / " + i*60 + " / " + relleno );
    fill( 0 );
    text( i, i*60, py );
  }
  
  // actualizacion de variables de animacion
  if( tam < 60 )
    tam++;
  else
    noLoop();  // fines pedagogicos, frena el draw
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
