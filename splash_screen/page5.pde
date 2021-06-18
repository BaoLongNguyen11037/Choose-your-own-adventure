void drawRoom5() {
  drawLines5();
  drawDoor5();
  drawCounter();
  drawCupboard();
  drawOven();
  
}

void drawLines5() {
  strokeWeight(1.0);
  stroke(0);
  line(207, 496, 0, 600);
  line(207, 496, 817, 496);
  line(817, 496, 1024, 600);
  line(207, 0, 207, 496);
  line(817, 0, 817, 496);

  fill(-3394765);
  translate(672, 393);
  rotate(0.0);
  ellipse(0,0,7, 7);

  fill(-16777216);
  translate(755, 465);
  beginShape();
  vertex(0, 0);
  vertex(-72, 0);
  vertex(-72, 41);
  vertex(0, 41);
  endShape(CLOSE);

  fill(-3342337);
  translate(962, 476);
  beginShape();
  vertex(10, -10);
  vertex(10, -93);
  vertex(-93, -134);
  vertex(-93, -62);
  endShape(CLOSE);

  fill(-5000269);
  translate(931, 465);
  beginShape();
  vertex(10, 10);
  vertex(-52, -21);
  vertex(-93, -10);
  vertex(-31, 21);
  endShape(CLOSE);

  strokeWeight(6);
  stroke(-6710887);
  line(910, 455, 910, 434);
  strokeWeight(6.147541);
  stroke(-6710887);
  line(910, 434, 890, 445);
  
  fill(-3375053);
  noStroke();
  translate(207, 538);
  beginShape();
  vertex(21, 0.0);
  vertex(-83, 62);
  vertex(197, 62);
  vertex(269, 0.0);
  endShape(CLOSE);

  fill(-3375053);
  translate(476, 538);
  beginShape();
  vertex(0, 0);
  vertex(0, 62);
  vertex(-21, 62);
  vertex(-21, 10);
  endShape(CLOSE);

  fill(-3375053);
  translate(455, 538);
  beginShape();
  vertex(0, 10);
  vertex(0, 62);
  vertex(-21, 62);
  vertex(-21, 21);
  endShape(CLOSE);

  fill(-3375053);
  translate(424, 538);
  rotate(0.0);
  beginShape();
  vertex(52, 21);
  vertex(0, 62);
  vertex(-21, 62);
  vertex(52, 0);
  endShape(CLOSE);

}

void drawDoor5() {
  noStroke();
  fill(-9287888);
  noStroke();
  quad(62, 290, 61, 569, 166, 518, 166, 238);
  
  fill(-8349185);
  quad(103, 280, 175, 300, 175, 559, 103, 538);
  
  fill(-154);
  ellipse(155, 383 , 15, 22);
}


void drawCounter() {
  noStroke();
  fill(-6737152);
  quad(910, 497, 786, 435, 786, 528, 910, 590);

  fill(-5026534);
  quad(910, 496, 1003, 496, 1003, 589, 910, 589);

  fill(-10066330);
  quad(1003, 496, 910, 496, 724, 403, 817, 403);

  fill(-5026534);
  quad(569, 434, 786, 434, 786, 527, 569, 527);
  
  fill(-10066330);
  quad(796, 434, 569, 434, 569, 403, 734, 403);

  fill(-5026534);
  quad(569, 207, 786, 207, 786, 300, 569, 300);
  
}

void drawOven() {
  
  fill(-1);
  quad(672, 434, 765, 434, 765, 527, 672, 527);

  fill(-1);
  quad(662, 403, 755, 403, 765, 434, 672, 434);

  fill(-1);
  quad(662, 382, 755, 382, 755, 403, 662, 403);
  
  
}

void drawCupboard() {
  noStroke();
  fill(-6737152);
  quad(910, 258, 786, 202, 786, 300, 910, 351);

  fill(-5026534);
  quad(910, 259, 1003, 259, 1003, 352, 910, 352);
  
  fill(-5026534);
  quad(1003, 259, 858, 207, 786, 207, 910, 259);

  fill(-5026534);
  quad(859, 207, 818, 197, 569, 197, 569, 207);
  
}
