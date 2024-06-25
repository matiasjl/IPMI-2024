
// repaso de map() y learColor()

void setup(){
  size( 600, 600 );
}

void draw(){
  // ejemplo con map()
  for( int i = 0 ; i < width ; i++ ){
    float m = map( i, 0, 600, 0, 255 );  // traspolo las 600 iteraciones a los 255 valores de color
    stroke( m );  // escala de grises
    line( i, 0, i, height );
  }
  
  //ejemplo con lerpColor() !PISA EL ANTERIOR
  for( int j = 0 ; j < height ; j++ ){
    color a = color(255, 0, 0);  //rojo puro
    color b = color(0, 0, 255 );  // azul puro
    
    float m = map( j, 0, 600, 0, 1 );
    color l = lerpColor( a, b, m );
        
    stroke( l );
    line( 0, j, width, j );
  }
}
