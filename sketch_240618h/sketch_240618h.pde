
// explicacion funcion map()
// traspolo valores entre dos escalas

size(600,600);
float v = 100;
float x = map( v, 0, 100, 0, 255 );

println( x );
background( x );
