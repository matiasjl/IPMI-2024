
// PPaint v3: condicionales

//1) declarar variables
int grosor;
color colorLapiz;

void setup() {  // una sola vez CUANDO inicia el programa
  size( 640, 480 );
  background( 255 );

  //2) inicializar variables
  grosor = 3+2;  //=5
  colorLapiz = color( 0 );
}

void draw() {  // X veces por segundo durante todo el tiempo
  //no uso background porque me borraria el dibujo

  //point( mouseX, mouseY );
  //circle( mouseX, mouseY, 20 );
  strokeWeight( grosor );
  stroke( colorLapiz );
  line( mouseX, mouseY, pmouseX, pmouseY );
  
  // cambio de grosor dinamico
  if( mouseX < width/3 ){
    grosor = 10;
  }
  if( mouseX > width/3 && mouseX < width/3*2 ){  //dos condiciones sumarlas
    grosor = 20;
  }
  if( mouseX > width/3*2 ){
    grosor = 30;
  }

  // DEBUG variables
  //println( "grosor: " + grosor );
  //println( "colorLapiz: " + colorLapiz );
}

void keyPressed() {  // CUANDO tocas cualquier tecla del teclado
  //cambiar la variable colorLapiz a negro
  //colorLapiz = color(0);
  //colorLapiz = color( random(255),random(255),random(255) );
  //colorLapiz = color( random(255), 0, 0 );
  
  if( key == 'r' ){  // expresion condicional, devuelve true o false
    colorLapiz = color(200, 0, 0 );  // solo si es true, se ejecuta este codigo
  }
  if( key == 'g' ){  //verde
    colorLapiz = color(0, 200, 0 );
  }
  if( key == 'b' ){  //azul
    colorLapiz = color(0, 0, 200 );
  }
  
  
  //DEBUG evento
  println( "tecla presionada: " + key );
  println( "color: " + colorLapiz );
}

void mousePressed() {  // CUANDO presionas el clic del mouse o touch del trackpad
  //aumentar la variable grosor
  //grosor = grosor * 2;  //INCREMENTO EXPONENCIAL
  grosor = grosor + 5;
  
  //DEBUG mouse
  println( grosor);
}



//tipos de operaciones de comparacion para condicionales
/*

  ==  igual a
  >   mayor a
  <   menor a
  >=  mayor o igual a
  <=  menor o igual a
  
 */
