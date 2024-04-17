
void setup(){
  size( 800, 400 );
  background( 0 );
  textSize( 24 );
}

void draw(){
  background( 0 );
  
  // imprime en consola la posicion del mouse
  println( mouseX + " / " + mouseY );
  
  // lo mismo en pantalla
  text( mouseX + " / " + mouseY, mouseX, mouseY);

}
