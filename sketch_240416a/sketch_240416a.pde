//carga de imagenes en processing
//paso 1/3
PImage miPaisaje;

void setup() {  //se ejecuta una sola vez, al comienzo
  //size( ancho, alto );
  size( 800, 400 );
  background( 255 );

  //paso 2/3: cargar la imagen
  miPaisaje = loadImage( "montaña.jpg" );
}

void draw() {  //se ejecuta reiteradamente, 60fps aprox
  //esto no se ve: lo tapa la imagen
  rect(0, 0, 100, 200 );

  //paso 3/3: muestro mi imagen
  //image( nombreVar, posX, posY );
  image( miPaisaje, 0, 0 );

  //montaña grande naranja
  fill( 255, 180, 20, 200 );
  stroke(100);
  strokeWeight( 10 );
  triangle( 400+0, 400, 400+400, 100, 400+400, 400 );

  //arbol verde izquierdo pequeño
  noStroke();
  fill( 0, 200, 0 );
  triangle( 400+0, 380, 400+20, 325, 400+40, 380 );

  //sol que no esta en la imagen
  fill( 200, 200, 0 );
  noStroke();
  //ellipse( 100, 100, 50, 50 );
  circle( 400+100, 100, 50 );

  // imprime en consola la posicion del mouse
  println( mouseX + " / " + mouseY );
}
