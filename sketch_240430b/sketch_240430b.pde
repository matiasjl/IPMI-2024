// usos practicos de variables GLOBALES

// 1) DECLARACION de variable
String nombre;  // tipo texto

// 1y2) ASIGNACION + DECLARACION
char inicial = 'M';
int edad = 33;  // tipo numero entero
float altura = 1.83; // tipo numero flotante/decimal

void setup() {
  size( 600, 600 );
  //frameRate ( 5 );  //NO usar, solo a modo de entender el draw
  
  //operaciones para modificar texto
  textSize( 48 );
  textAlign( CENTER, CENTER );  // x e y
  
  // 2) ASIGNACION a variable
  nombre = "Matias";
  
  // imprimo contenido de la variable
  println( inicial );

  // caso de variables LOCALES, solo existe entre llaves
  int edadDiego = 25;
  println( edadDiego );
}

void draw() {
  // background con transparencia
  fill( 255, 30 );
  rect( 0, 0, width, height );
  
  // 3) USO de variables
  fill( edad );  //numero entero funciona
  text( nombre, mouseY, mouseX );  //atentis uso de variables
  
  // puedo volver a usar mis variables + variables locales
  float x = random( width );
  float y = random( height );
  fill( 200, 0, 0 );
  text( edad, x, y );
}
