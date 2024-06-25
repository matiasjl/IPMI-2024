
// grillas con for

int mod;

void setup(){
  size( 600, 600 );
  
  mod = height / 50 ; // =60
}

void draw(){
  background ( 0 );
  
  for( int i = 0 ; i < height ; i+=mod ){  //10 iteraciones
    for( int j = 0 ; j < height ; j+=mod ){  //10 iteraciones
      println( i + " / " + j);
      //rect( i, (j/60)*mouseY, mod, mod );
      rect( i, j, mod, mod );
    }
  }

}
