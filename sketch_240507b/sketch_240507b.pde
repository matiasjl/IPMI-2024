
// PPaint v2: eventos

//1) declarar variables
int grosor;
color colorLapiz;

void setup() {  // una sola vez CUANDO inicia el programa
  size( 640, 480 );
  background( 255 );

  //2) inicializar variables
  grosor = 3+2;  //=5
  colorLapiz = color(255, 0, 0 );
}

void draw() {  // X veces por segundo durante todo el tiempo
  //no uso background porque me borraria el dibujo

  //point( mouseX, mouseY );
  //circle( mouseX, mouseY, 20 );
  strokeWeight( grosor );
  stroke( colorLapiz );
  line( mouseX, mouseY, pmouseX, pmouseY );

  // DEBUG variables
  //println( "grosor: " + grosor );
  //println( "colorLapiz: " + colorLapiz );
}

void keyPressed() {  // CUANDO tocas cualquier tecla del teclado
  //cambiar la variable colorLapiz a negro
  //colorLapiz = color(0);
  //colorLapiz = color( random(255),random(255),random(255) );
  colorLapiz = color( random(255), 0, 0 );
  
  //DEBUG evento
  println( "tecla presionada" );
}

void mousePressed() {  // CUANDO presionas el clic del mouse o touch del trackpad
  //aumentar la variable grosor
  //grosor = grosor * 2;  //INCREMENTO EXPONENCIAL
  grosor = grosor + 5;
  
  //DEBUG mouse
  println( grosor);
}



//tipos de operaciones sobre datos numericos aka variables
/*

  =  suma
  -  resta
  *  multiplicacion
  /  division
  
 */
