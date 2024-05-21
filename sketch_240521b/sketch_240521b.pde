/*

  - sobre textos
  - - saltos de linea \n
  - - strokeWeight en texto?
  
  + OPERACIONES SOBRE TEXTO Y STRING

*/

String texto = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. \nVivamus faucibus sit amet justo id ultricies. \nNullam eu odio nibh. \nEtiam aliquam dui at enim vulputate, dictum tincidunt lectus porta. \nAliquam vitae massa molestie, porta augue non, tristique nulla. \nNam sed lectus eu diam vulputate finibus ac non ex. \nSuspendisse potenti. Duis quis dignissim diam. \nPellentesque eu ligula non nunc venenatis vehicula quis nec magna. \nSed vel purus dolor.";
String textoBloque = "Phasellus vehicula aliquet eros, sit amet laoreet purus tincidunt eu. Fusce vel lacus vehicula, cursus libero sed, mattis lacus. Sed turpis odio, bibendum at laoreet nec, elementum at dui. Ut placerat, ex egestas feugiat lobortis, velit tellus tincidunt justo, in molestie felis sem nec diam.";

void setup(){  // se ejecuta una sola
  size(640, 480);
  println( texto );
  
  //caracteristicas del texto
  textSize( 18 );  // tamaÑo
  
}

void draw(){  // se ejecuta 60 veces x segundo aprox
  background(255);
  
  fill(0);
  //strokeWeight( 10 );  // NO afecta a la funcion texto
  textAlign( RIGHT, TOP ); // alineacion: LEFT, RIGHT, BOTTOM, TOP, CENTER para cada eje X e Y
  text( texto, width-50, 50);  // saltos de linea con \n   // width-50 = 590
  
  noFill();
  rect( 50, 300, 200, 500 );  //mismos param que el texto, dibujo la caja de texto
  textAlign( LEFT, TOP );  // por defecto
  fill(0);
  text( textoBloque, 50, 300, 200, 500 );  // determino el ancho y alto de la caja de texto
}
