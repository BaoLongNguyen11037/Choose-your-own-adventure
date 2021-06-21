void drawRoom5() {
  drawLines5();
  drawDoor5();
  drawCounter();
  drawCupboard();
  drawOven();
  drawWindow5();
  drawTable5();
  drawSink();
  
}

void drawLines5() {
  strokeWeight(1.0);
  line(207, 496, 0, 600);
  line(207, 496, 817, 496);
  line(207, 0, 207, 496);
  line(817, 496, 1024, 600);
  line(817, 0, 817, 496);

}

void drawDoor5() {
  strokeWeight(0);
  fill(-9287888);
  quad(62, 290, 61, 569, 166, 518, 166, 238);
  
  fill(-8349185);
  quad(103, 280, 69, 300, 69, 559, 103, 538);
  
  fill(-154);
  ellipse(155, 383, 15, 22);
}


void drawCounter() {
  fill(-5026534);
  quad(910, 496, 1003, 496, 1003, 589, 910, 589);
  quad(910, 496, 786, 434, 786, 528, 910, 590);
  quad(569, 434, 786, 434, 786, 528, 569, 528);
  
  noStroke();
  fill(-10066330);
  quad(1003, 496, 910, 496, 724, 403, 817, 403);
  quad(787, 434, 569, 434, 569, 403, 734, 403);
  
}

void drawOven() {
  fill(-1);
  quad(672, 434, 765, 434, 765, 528, 672, 528);
  quad(662, 403, 755, 403, 765, 434, 672, 434);
  quad(662, 382, 755, 382, 755, 403, 662, 403);
  
  fill(-3394765);
  ellipse(672, 393, 7, 7);
  
  fill(-16777216);
  quad(755, 465, 683, 465, 683, 506, 755, 506);
  
}

void drawCupboard() {
  
  //Drawing the cupboards themselves
  stroke(0);
  fill(-5026534);
  quad(910, 258, 786, 202, 786, 300, 910, 352);
  quad(910, 258, 1003, 258, 1003, 352, 910, 352);
  quad(1003, 258, 850, 207, 786, 207, 910, 258);
  quad(850, 207, 818, 197, 569, 197, 569, 207);
  quad(569, 207, 786, 207, 786, 300, 569, 300);
  
  //Drawing the cupboard lines
  fill(0);
  strokeWeight(1.0);
  stroke(0);
  line(677, 207, 677, 300);
  line(845, 231, 845, 325);
  line(845, 464, 845, 556);
  noStroke();
  
  //Drawing the cupboard handles
  strokeWeight(3);
  stroke(0);
  line(660, 250, 660, 270);
  line(694, 250, 694, 270);
  
  line(830, 263, 830, 283);
  line(860, 275, 860, 295);
  
  line(660, 470, 660, 490);
  
  line(830, 493, 830, 513);
  line(860, 508, 860, 528);
  strokeWeight(0);
}

void drawWindow5() {
  fill(-3342337);
  quad(972, 466, 972, 383, 879, 342, 879, 414);
}

void drawSink() {
  fill(-5000269);
  quad(941, 475, 879, 444, 838, 455, 901, 486);
  

  strokeWeight(6);
  stroke(-6710887);
  line(910, 455, 910, 434);
  line(910, 434, 890, 445);
  
}

void drawTable5() {
  fill(-3375053);
  strokeWeight(0);
  quad(228, 538, 124, 600, 404, 600, 476, 538);
  //legs
  quad(455, 570, 455, 600, 434, 600, 434, 575);
  quad(476, 552, 476, 600, 455, 600, 455, 559);
  quad(476, 552, 424, 600, 404, 600, 476, 538);
  
}
