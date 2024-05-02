// variables del entorno processing

void setup(){  // se ejecuta una sola vez
  size(600, 600 );  // widht = 600 - height = 400
}

void draw(){  // como funciona el draw? 60 veces por segundo
  //background( 200 );
  fill( 0 , 5 );
  rect( 0, 0, width, height );
  
  fill( 200 );
  circle( mouseX, mouseX, mouseX );  // foco aqui
  
  println( mouseX );
}
