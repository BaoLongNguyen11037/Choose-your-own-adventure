boolean withinExit1 = false;

boolean interactedExit1 = false;

void drawRoom4() {
  int[] highlightBox1X = { width*400/1000, width*600/1000 };
  int[] highlightBox1Y = { height*760/1000, height };
  drawLines();
  drawDoors();
  drawTable();
  drawCouch();
  if (mouseX > highlightBox1X[0] && mouseX < highlightBox1X[1] && mouseY > highlightBox1Y[0] && mouseY < highlightBox1Y[1]) {
    withinExit1 = true;
    if (paused == false) {
      cursor(HAND);
      noFill();
      quad(highlightBox1X[0], highlightBox1Y[0], highlightBox1X[1], highlightBox1Y[0], highlightBox1X[1], highlightBox1Y[1], highlightBox1X[0], highlightBox1Y[1]);
      c = "Go to the bedroom.";
      drawText();
    }
  }
  else {
    if (paused == false) {
      withinExit1 = false;
    }
    cursor(ARROW);
  }
}

void drawLines() {
  //Wall Intersection Variables
  int[] lineX = { width*344/1000, width*655/1000, width*202/1000, width*798/1000, width*655/1000, width*345/1000 };
  int[] lineY = { height*742/1000, height*0/1000, height, height*638/1000 };
  //Drawing the Wall Intersections
  strokeWeight(1);
  line(lineX[0], lineY[0], lineX[2], lineY[2]);
  line(lineX[0], lineY[1], lineX[0], lineY[0]);
  line(lineX[1], lineY[0], lineX[3], lineY[2]);
  line(lineX[1], lineY[1], lineX[1], lineY[0]);
  line(lineX[4], lineY[3], lineX[5], lineY[3]);
  strokeWeight(0);
}

void drawDoors() {
  //Bathroom Door Variables
  int[] door1X = { width*223/1000, width*323/1000, };
  int[] door1Y = { height*967/1000, height*432/1000, height*260/1000, height*777/1000, };

  //Kitchen Door Variables
  int[] door2X = { width*787/1000, width*696/1000 };
  int[] door2Y = { height*983/1000, height*415/1000, height*276/1000, height*812/1000 };
  
  //Bathroom Door Panel Variables
  int[] door1PanelX = { width*262/1000, width*314/1000, width*232/1000, width*283/1000 };
  int[] door1PanelY = { height*397/1000, height*673/1000, height*587/1000, height*312/1000,
  height*448/1000, height*725/1000, height*638/1000, height*363/1000, height*913/1000, height*827/1000, height*552/1000, 
  height*862/1000, height*775/1000, height*500/1000};
  int[] door1knobXYWH = { door1PanelX[1], height*560/1000, width*20/1000, height*43/1000 };

  //Kitchen Door Panel Variables
  int[] door2PanelX = { width*707/1000, width*747/1000, width*737/1000, width*777/1000 };
  int[] door2PanelY = { height*328/1000, height*622/1000, height*397/1000, height*690/1000, 
  height*380/1000, height*675/1000, height*448/1000, height*740/1000, 
  height*568/1000, height*861/1000, height*636/1000, height*930/1000, 
  height*517/1000, height*810/1000, height*585/1000, height*878/1000};
  int[] door2knobXYWH = { door2PanelX[0], height*586/1000, door1knobXYWH[2], door1knobXYWH[3] };
  
  //Drawing the Bathroom Door
  fill(doorColor);
  quad(door1X[0], door1Y[0], door1X[0], door1Y[1], door1X[1], door1Y[2], door1X[1], door1Y[3]);
  fill(doorpanelColor);
  quad(door1PanelX[0], door1PanelY[0], door1PanelX[2], door1PanelY[4], door1PanelX[2], door1PanelY[6], door1PanelX[0], door1PanelY[2]);
  quad(door1PanelX[0], door1PanelY[1], door1PanelX[2], door1PanelY[5], door1PanelX[2], door1PanelY[8], door1PanelX[0], door1PanelY[11]);
  quad(door1PanelX[1], door1PanelY[2], door1PanelX[3], door1PanelY[6], door1PanelX[3], door1PanelY[9], door1PanelX[1], door1PanelY[12]);
  quad(door1PanelX[1], door1PanelY[3], door1PanelX[3], door1PanelY[7], door1PanelX[3], door1PanelY[10], door1PanelX[1], door1PanelY[13]);
  fill(doorknobColor);
  ellipse(door1knobXYWH[0], door1knobXYWH[1], door1knobXYWH[2], door1knobXYWH[3]);

  //Drawing the Kitchen Door
  fill(doorColor);
  quad(door2X[0], door2Y[0], door2X[0], door2Y[1], door2X[1], door2Y[2], door2X[1], door2Y[3]);
  fill(doorpanelColor);
  quad(door2PanelX[0], door2PanelY[0], door2PanelX[2], door2PanelY[4], door2PanelX[2], door2PanelY[8], door2PanelX[0], door2PanelY[12]);
  quad(door2PanelX[0], door2PanelY[1], door2PanelX[2], door2PanelY[5], door2PanelX[2], door2PanelY[9], door2PanelX[0], door2PanelY[13]);
  quad(door2PanelX[1], door2PanelY[2], door2PanelX[3], door2PanelY[6], door2PanelX[3], door2PanelY[10], door2PanelX[1], door2PanelY[14]);
  quad(door2PanelX[1], door2PanelY[3], door2PanelX[3], door2PanelY[7], door2PanelX[3], door2PanelY[11], door2PanelX[1], door2PanelY[15]);
  fill(doorknobColor);
  ellipse(door2knobXYWH[0], door2knobXYWH[1], door2knobXYWH[2], door2knobXYWH[3]);

}

void drawTable() {
  //Desk Variables
  int[] deskXY = { width*454/1000, height*655/1000 };
  int[] deskX = { width*10/1000, width*61/1000, width*70/1000, width*81/1000, 0-width*10/1000 };
  int[] deskY = { height*17/1000, 0-height*51/1000, 0-height*68/1000 };

  //Lamp Stand Variables
  int[] lStandXY = { deskXY[0], height*572/1000 };
  int[] lStandX = { deskX[2], width*40/1000, width*30/1000 };
  int[] lStandY = { height*17/1000, 0-height*103/1000, };
  
  //Lampshade Variables
  int[] lShadeX = { width*455/1000, width*525/1000, width*505/1000, width*475/1000,  };
  int[] lShadeY = { height*535/1000, height*448/1000, };
  
  //Drawing the Desk
  fill(deskColor);
  pushMatrix();
  translate(deskXY[0], deskXY[1]);
  beginShape();
  vertex(0, 0);
  vertex(0, deskY[0]);
  vertex(deskX[0], deskY[0]);
  vertex(deskX[0], 0);
  vertex(deskX[1], 0);
  vertex(deskX[1], deskY[0]);
  vertex(deskX[2], deskY[0]);
  vertex(deskX[2], 0);
  vertex(deskX[2], deskY[1]);
  vertex(deskX[3], deskY[1]);
  vertex(deskX[3], deskY[2]);
  vertex(deskX[4], deskY[2]);
  vertex(deskX[4], deskY[1]);
  vertex(0, deskY[1]);
  endShape(CLOSE);
  popMatrix();

  //Drawing the Lamp Stand
  fill(standColor);
  pushMatrix();
  translate(lStandXY[0], lStandXY[1]);
  beginShape();
  vertex(0, 0);
  vertex(0, lStandY[0]);
  vertex(lStandX[0], lStandY[0]);
  vertex(lStandX[0], 0);
  vertex(lStandX[1], 0);
  vertex(lStandX[1], lStandY[1]);
  vertex(lStandX[2], lStandY[1]);
  vertex(lStandX[2], 0);
  endShape(CLOSE);
  popMatrix();

  //Drawing the Lampshade
  fill(shadeColor);
  quad(lShadeX[0], lShadeY[0], lShadeX[1], lShadeY[0], lShadeX[2], lShadeY[1], lShadeX[3], lShadeY[1]);
}

void drawCouch() {
  int[] lineX = { width*344/1000, width*655/1000, width*202/1000, width*798/1000, width*655/1000, width*345/1000 };
  //Couch Base Variables
  int[] couchBaseXY = { width*414/1000, height*603/1000 };
  int[] couchBaseX = { 0-width*10/1000, 0-width*70/1000, width*0/1000, width*0/1000,  };
  int[] couchBaseY = { 0-height*17/1000, height*68/1000, height*51/1000, height*0/1000, };

  //Couch Backboard Variables
  int[] couchBackboardX = { width*404/1000, width*344/1000 };
  int[] couchBackboardY = { height*517/1000, height*638/1000 };

  //Couch Cushion Variables
  int[] couchCushionX = { couchBackboardX[0], lineX[0] };
  int[] couchCushionY = { height*603/1000, couchBackboardY[1] };

  //Couch Armrest Variables
  int[] couchArmestXYWH = { couchBaseXY[0], height*586/1000, width*39/1000, height*66/1000 };
  
  //Drawing the Couch Base
  fill(couchbaseColor);
  pushMatrix();
  translate(couchBaseXY[0], couchBaseXY[1]);
  beginShape();
  vertex(0, couchBaseY[0]);
  vertex(0, couchBaseY[1]);
  vertex(couchBaseX[0], couchBaseY[1]);
  vertex(couchBaseX[0], couchBaseY[2]);
  vertex(couchBaseX[1], couchBaseY[2]);
  vertex(couchBaseX[1], couchBaseY[0]);
  endShape(CLOSE);
  popMatrix();

  //Drawing the back of the couch
  fill(couchbackColor);
  quad(couchBackboardX[0], couchBackboardY[0], couchBackboardX[1], couchBackboardY[0], couchBackboardX[1], couchBackboardY[1], couchBackboardX[0], couchBackboardY[1]);

  //Drawing the couch cushion
  fill(couchcushionColor);
  quad(couchCushionX[0], couchCushionY[0], couchCushionX[1], couchCushionY[0], couchCushionX[1], couchCushionY[1], couchCushionX[0], couchCushionY[1]);

  fill(couchbaseColor);
  ellipse(couchArmestXYWH[0], couchArmestXYWH[1], couchArmestXYWH[2], couchArmestXYWH[3]);

}
