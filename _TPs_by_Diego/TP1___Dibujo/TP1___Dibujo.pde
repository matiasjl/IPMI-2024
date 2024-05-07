PImage foto;
color colorPicker;

void setup() {
  size(800, 400);
  foto = loadImage("Elegida.jpg");
}

void draw() {
  background(255);


  //ColorPicker
  fill(0);
  colorPicker = get(mouseX, mouseY);
  text("R: " + red(colorPicker), mouseX+10, mouseY+0);
  text("G: " + green(colorPicker), mouseX+10, mouseY+10);
  text("B: " + blue(colorPicker), mouseX+10, mouseY+20);
  fill(colorPicker);
  rect(100, 100, 200, 200);

  //Consola
  println("R:" + red(colorPicker) + " G:" + green(colorPicker) + " B:" + blue(colorPicker));
  println(mouseX + ", " + mouseY);

  //Foto
  image(foto, 0, 0);


  //Cielo
  strokeWeight(11);
  stroke(66, 96, 169);
  line(402, 0, 800, 0);
  stroke(70, 100, 171);
  line(402, 10, 800, 10);
  stroke(75, 106, 173);
  line(402, 20, 800, 20);
  stroke(79, 110, 175);
  line(402, 30, 800, 30);
  stroke(83, 115, 176);
  line(402, 40, 800, 40);
  stroke(92, 125, 179);
  line(402, 50, 800, 50);
  stroke(95, 130, 180);
  line(402, 60, 800, 60);
  stroke(97, 134, 186);
  line(402, 70, 800, 70);
  stroke(102, 141, 184);
  line(402, 80, 800, 80);
  stroke(117, 152, 192);
  line(402, 90, 800, 90);
  stroke(113, 147, 192);
  line(402, 100, 800, 100);
  stroke(132, 162, 198);
  line(402, 110, 800, 110);
  stroke(128, 163, 195);
  line(402, 120, 800, 120);
  stroke(135, 167, 205);
  line(402, 130, 800, 130);
  line(402, 140, 800, 140);





  //nubes ----------------------------------------
  //Primera fila
  strokeWeight(0);
  fill(161, 184, 216);
  circle(407, 144, 23);
  fill(196, 211, 230);
  circle(407, 160, 25);
  fill(119, 142, 192);
  circle(408, 175, 25);
  fill(114, 141, 188);
  circle(408, 190, 25);
  fill(92, 115, 169);
  circle(408, 205, 25);
  fill(86, 106, 165);
  circle(408, 220, 25);
  fill(79, 98, 166);
  circle(408, 235, 25);

  //Segunda fila
  fill(161, 184, 216);
  circle(427, 146, 25);
  fill(196, 211, 230);
  circle(427, 160, 25);
  fill(119, 142, 192);
  circle(427, 175, 25);
  fill(114, 141, 188);
  circle(427, 190, 25);
  fill(92, 115, 169);
  circle(427, 205, 25);
  fill(86, 106, 165);
  circle(427, 220, 25);
  fill(79, 98, 166);
  circle(427, 235, 25);

  //Tercera fila
  fill(161, 184, 216);
  circle(447, 142, 25);
  fill(196, 211, 230);
  circle(447, 160, 25);
  fill(119, 142, 192);
  circle(447, 175, 25);
  fill(114, 141, 188);
  circle(447, 190, 25);
  fill(92, 115, 169);
  circle(447, 205, 25);
  fill(86, 106, 165);
  circle(447, 220, 25);
  fill(79, 98, 166);
  circle(447, 235, 25);

  //Tercera fila
  fill(161, 184, 216);
  circle(447, 142, 25);
  fill(196, 211, 230);
  circle(447, 160, 25);
  fill(119, 142, 192);
  circle(447, 175, 25);
  fill(114, 141, 188);
  circle(447, 190, 25);
  fill(92, 115, 169);
  circle(447, 205, 25);
  fill(86, 106, 165);
  circle(447, 220, 25);
  fill(79, 98, 166);
  circle(447, 235, 25);

  //Cuarta fila
  fill(161, 184, 216);
  circle(467, 146, 25);
  fill(196, 211, 230);
  circle(467, 160, 25);
  fill(119, 142, 192);
  circle(467, 175, 25);
  fill(114, 141, 188);
  circle(467, 190, 25);
  fill(92, 115, 169);
  circle(467, 205, 25);
  fill(86, 106, 165);
  circle(467, 220, 25);
  fill(79, 98, 166);
  circle(467, 235, 25);

  //Quinta fila
  fill(161, 184, 216);
  circle(487, 146, 25);
  fill(196, 211, 230);
  circle(487, 160, 25);
  fill(119, 142, 192);
  circle(487, 175, 25);
  fill(114, 141, 188);
  circle(487, 190, 25);
  fill(92, 115, 169);
  circle(487, 205, 25);
  fill(86, 106, 165);
  circle(487, 220, 25);
  fill(79, 98, 166);
  circle(487, 235, 25);

  //Sexta fila
  fill(161, 184, 216);
  circle(507, 142, 25);
  fill(196, 211, 230);
  circle(507, 160, 25);
  fill(119, 142, 192);
  circle(507, 175, 25);
  fill(114, 141, 188);
  circle(507, 190, 25);
  fill(92, 115, 169);
  circle(507, 205, 25);
  fill(86, 106, 165);
  circle(507, 220, 25);
  fill(79, 98, 166);
  circle(507, 235, 25);

  //Septima fila
  fill(161, 184, 216);
  circle(527, 148, 25);
  fill(196, 211, 230);
  circle(527, 160, 25);
  fill(119, 142, 192);
  circle(527, 175, 25);
  fill(114, 141, 188);
  circle(527, 190, 25);
  fill(92, 115, 169);
  circle(527, 205, 25);
  fill(86, 106, 165);
  circle(527, 220, 25);
  fill(79, 98, 166);
  circle(527, 235, 25);

  //novena fila
  fill(161, 184, 216);
  circle(547, 146, 25);
  fill(196, 211, 230);
  circle(547, 160, 25);
  fill(119, 142, 192);
  circle(547, 175, 25);
  fill(114, 141, 188);
  circle(547, 190, 25);
  fill(92, 115, 169);
  circle(547, 205, 25);


  //decima fila
  fill(161, 184, 216);
  circle(567, 144, 25);
  fill(196, 211, 230);
  circle(567, 160, 25);
  fill(119, 142, 192);
  circle(567, 175, 25);
  fill(114, 141, 188);
  circle(567, 190, 25);
  fill(86, 106, 165);
  circle(567, 205, 25);

  //once fila
  fill(161, 184, 216);
  circle(587, 144, 25);
  fill(196, 211, 230);
  circle(587, 160, 25);
  fill(119, 142, 192);
  circle(587, 175, 25);
  fill(114, 141, 188);
  circle(587, 190, 25);

  //doce fila
  fill(161, 184, 216);
  circle(607, 130, 25);
  fill(161, 184, 216);
  circle(607, 144, 25);
  fill(196, 211, 230);
  circle(607, 160, 25);
  fill(119, 142, 192);
  circle(607, 175, 25);
  fill(114, 141, 188);
  circle(607, 190, 25);

  //trece fila
  fill(161, 184, 216);
  circle(627, 126, 25);
  fill(161, 184, 216);
  circle(627, 144, 25);
  fill(196, 211, 230);
  circle(627, 160, 25);
  fill(119, 142, 192);
  circle(627, 175, 25);
  fill(114, 141, 188);
  circle(627, 190, 25);

  //catorce fila
  fill(161, 184, 216);
  circle(647, 124, 25);
  fill(161, 184, 216);
  circle(647, 144, 25);
  fill(196, 211, 230);
  circle(647, 160, 25);
  fill(119, 142, 192);
  circle(647, 175, 25);
  fill(114, 141, 188);
  circle(647, 190, 25);

  //quince fila
  fill(161, 184, 216);
  circle(667, 136, 25);
  fill(161, 184, 216);
  circle(667, 144, 25);
  fill(196, 211, 230);
  circle(667, 160, 25);
  fill(119, 142, 192);
  circle(667, 175, 25);
  fill(114, 141, 188);
  circle(667, 190, 25);

  //16 fila
  fill(161, 184, 216);
  circle(687, 148, 25);
  fill(196, 211, 230);
  circle(687, 160, 25);
  fill(119, 142, 192);
  circle(687, 175, 25);
  fill(114, 141, 188);
  circle(687, 190, 25);

  //17 fila
  fill(161, 184, 216);
  circle(707, 148, 25);
  fill(196, 211, 230);
  circle(707, 160, 25);
  fill(119, 142, 192);
  circle(707, 175, 25);
  fill(114, 141, 188);
  circle(707, 190, 25);

  //18 fila
  fill(161, 184, 216);
  circle(727, 148, 25);
  fill(196, 211, 230);
  circle(727, 160, 25);
  fill(119, 142, 192);
  circle(727, 175, 25);
  fill(114, 141, 188);
  circle(727, 190, 25);

  //19 fila
  fill(161, 184, 216);
  circle(747, 148, 25);
  fill(196, 211, 230);
  circle(747, 160, 25);
  fill(119, 142, 192);
  circle(747, 175, 25);
  fill(114, 141, 188);
  circle(747, 190, 25);
  fill(119, 142, 192);
  circle(747, 205, 25);
  fill(114, 141, 188);
  circle(747, 220, 25);

  //20 fila
  fill(161, 184, 216);
  circle(767, 148, 25);
  fill(196, 211, 230);
  circle(767, 160, 25);
  fill(119, 142, 192);
  circle(767, 175, 25);
  fill(114, 141, 188);
  circle(767, 190, 25);
  fill(119, 142, 192);
  circle(767, 205, 25);
  fill(114, 141, 188);
  circle(767, 220, 25);

  //21 fila
  fill(161, 184, 216);
  circle(787, 148, 25);
  fill(196, 211, 230);
  circle(787, 160, 25);
  fill(119, 142, 192);
  circle(787, 175, 25);
  fill(114, 141, 188);
  circle(787, 190, 25);
  fill(119, 142, 192);
  circle(787, 205, 25);
  fill(114, 141, 188);
  circle(787, 220, 25);

  //22 fila
  fill(161, 184, 216);
  circle(807, 148, 25);
  fill(196, 211, 230);
  circle(807, 160, 25);
  fill(119, 142, 192);
  circle(807, 175, 25);
  fill(114, 141, 188);
  circle(807, 190, 25);
  fill(119, 142, 192);
  circle(807, 205, 25);
  fill(114, 141, 188);
  circle(807, 220, 25);



  //Estatua -------------------------------------
  strokeWeight(0);
  fill(0, 6, 31);
  circle(671, 122, 4);
  rectMode(CENTER);
  rect(671, 130, 5, 12);
  //Brazo
  stroke(0, 6, 31);
  strokeWeight(2);
  line(668, 127, 664, 131);
  //Baston
  strokeWeight(1);
  line(664, 131, 660, 119);
  line(664, 131, 667, 143);
  //Piernas
  strokeWeight(1.5);
  line(669, 135, 668, 145);
  line(671, 136, 673, 145);



  //Montaña
  strokeWeight(0);
  fill(24, 35, 55);
  triangle(400, 239, 479, 245, 400, 279);
  fill(45, 54, 63);
  quad(400, 279, 617, 175, 606, 254, 400, 371);
  fill(25, 26, 30);
  quad(400, 371, 606, 254, 800, 800, 400, 400);
  fill(35, 42, 45);
  quad(606, 254, 733, 245, 800, 400, 655, 400);
  fill(0);
  quad(733, 245, 800, 290, 800, 400, 800, 400);
  fill(10);
  quad(733, 245, 750, 220, 800, 205, 800, 290);
  fill(32, 37, 43);
  quad(617, 175, 664, 146, 733, 245, 605, 255);
  fill(17, 18, 23);
  quad(664, 146, 687, 141, 750, 220, 733, 246);
  fill(5);
  quad(709, 169, 749, 203, 750, 220, 750, 220);
}
