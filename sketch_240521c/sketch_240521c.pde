/*

  - animacion de parametros con variables
  - - animación de color y el zoom in?
  - - Position, escala y color
  - - Animacion de color sobre canal alpha (cuarto parámetro de color)
  - - Limite de una animación = condicionales (if)
  
  
  
  = asignacion
  == igualacion (pregunta racional)
  
  */

// 1. declaro mis variables
String miNombre;
int tam;
float x, y;  //declaro dos variables en la misma linea con ','
color relleno;
int alpha;

void setup(){
  size( 600, 600 );
  
  // 2. le aisgno valores a mis variables
  miNombre = "Matias";
  tam = 12;
  x = width / 2;
  y = height / 2;
  relleno = color(200, 0, 0);
  alpha = 255;

}

void draw(){
  background(0);
  
  // actualizo mis variables como metodo de animacion
  if( tam < 180 ){  //limito la animacion, true or false
    //tam = tam + 1;
    tam += 1;
    println(tam);
  }else{  // cuando NO se cumpla la condicion (cuando llega al tam maximo el texto)
    // cuando tam == 180
    relleno = color(0, 200, 0);  // cambio color a verde
  }
  // empiezo a animar el eje Y cuando alcance el tamaño
  if( tam >= 180 ){
    // tres maneras diferentes de escribir la misma operacion matematica
    y = y - 1;
    y -= 1;
    y--;  //a la variable y le resto 1 pixel
    //
    // ademas voy a hacer que se vaya por fadeout de color
    relleno = color(0, 200, 0, alpha);
    alpha = alpha - 2;
  }

  // 3. uso mis variables = dibujo
  fill( relleno );
  textSize( tam );
  textAlign( CENTER, TOP );
  text( miNombre, x, y );
}

void keyPressed(){
  // actualizo variables solo al presionar el teclado
  if( key == 'x')
    x = random(width);

  println(key);
}
