
// PPaint v1: variables

//1) declarar variables
int grosor;
color colorLapiz;

void setup(){
  size( 640, 480 );
  background( 255 ); 
  
  //2) inicializar variables
  grosor = 10; 
  colorLapiz = color(255, 0, 0 );
}

void draw(){
  //no uso background porque me borraria el dibujo
  
  //point( mouseX, mouseY );
  //circle( mouseX, mouseY, 20 );
  strokeWeight( grosor );
  stroke( colorLapiz );
  line( mouseX, mouseY, pmouseX, pmouseY );
}


//tipos de variable
/*
int enteros
float con coma
char caracter (1 solo)
boolean true/false
color un color rgb
*/
