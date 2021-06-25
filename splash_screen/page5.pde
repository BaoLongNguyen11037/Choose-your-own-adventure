boolean withinExit5 = false;
boolean withinPoster = false;
boolean withinOven = false;
boolean withinTable = false;
boolean withinFridge = false;
boolean withinSink = false;
boolean withinCupboards = false;

boolean interactedFridge = false;
boolean interactedTable = false;

void drawRoom5() {
  drawLines5();
  drawDoor5();
  drawCounter();
  drawCupboard();
  drawOven();
  drawWindow5();
  drawTable5();
  drawSink();
  drawPoster5();
  drawFridge();
  
  int highlightBox1X[] = { width*60/1000, width*162/1000 };
  int highlightBox1Y[] = { height*950/1000, height*396/1000 };
  
  int highlightBox2X[] = { width*228/1000, width*426/1000 };
  int highlightBox2Y[] = { height*448/1000, height*617/1000 };
  
  int highlightBox3X[] = { width*646/1000, width*747/1000 };
  int highlightBox3Y[] = { height*636/1000, height*880/1000 };
  
  int highlightBox4X[] = { width*200/1000, width*465/1000 };
  int highlightBox4Y[] = { height*800/1000, height };
  
  int highlightBox5X[] = { width*446/1000, width*556/1000 };
  int highlightBox5Y[] = { height*509/1000, highlightBox3Y[1] };
  
  strokeWeight(1);
  if (mouseX > highlightBox1X[0] && mouseX < highlightBox1X[1] && mouseY < highlightBox1Y[0] && mouseY > highlightBox1Y[1]) {
    withinExit5 = true;
    if (paused == false) {
      cursor(HAND);
      
      noFill();
      quad(highlightBox1X[0], highlightBox1Y[0], highlightBox1X[1], highlightBox1Y[0], highlightBox1X[1], highlightBox1Y[1], highlightBox1X[0], highlightBox1Y[1]);
      c = "Leave the kitchen.";
      drawText();
    }
  }
  else if (mouseX > highlightBox2X[0] && mouseX < highlightBox2X[1] && mouseY > highlightBox2Y[0] && mouseY < highlightBox2Y[1]) {
    withinPoster = true;
    if (paused == false) {
      cursor(HAND);
      noFill();
      quad(highlightBox2X[0], highlightBox2Y[0], highlightBox2X[1], highlightBox2Y[0], highlightBox2X[1], highlightBox2Y[1], highlightBox2X[0], highlightBox2Y[1]);
      c = "Interact with the Poster.";
      drawText();
    }
  }
  else if (mouseX > highlightBox3X[0] && mouseX < highlightBox3X[1] && mouseY > highlightBox3Y[0] && mouseY < highlightBox3Y[1]) {
    withinOven = true;
    if (paused == false) {
      cursor(HAND);
      noFill();
      quad(highlightBox3X[0], highlightBox3Y[0], highlightBox3X[1], highlightBox3Y[0], highlightBox3X[1], highlightBox3Y[1], highlightBox3X[0], highlightBox3Y[1]);
      c = "Interact with the Oven.";
      drawText();
    }
  }
  else if (mouseX > highlightBox4X[0] && mouseX < highlightBox4X[1] && mouseY > highlightBox4Y[0] && mouseY < highlightBox4Y[1]) {
    withinTable = true;
    if (paused == false) {
      cursor(HAND);
      noFill();
      quad(highlightBox4X[0], highlightBox4Y[0], highlightBox4X[1], highlightBox4Y[0], highlightBox4X[1], highlightBox4Y[1], highlightBox4X[0], highlightBox4Y[1]);
      c = "Interact with the Dining Table.";
      drawText();
    }
  }
  else if (mouseX > highlightBox5X[0] && mouseX < highlightBox5X[1] && mouseY > highlightBox5Y[0] && mouseY < highlightBox5Y[1]) {
    withinFridge = true;
    if (paused == false) {
      cursor(HAND);
      noFill();
      quad(highlightBox5X[0], highlightBox5Y[0], highlightBox5X[1], highlightBox5Y[0], highlightBox5X[1], highlightBox5Y[1], highlightBox5X[0], highlightBox5Y[1]);
      c = "Interact with the Fridge.";
      drawText();
    }
  }
  else {
    if (paused == false) {
      withinExit5 = false;
      withinPoster = false;
      withinOven = false;
      withinTable = false;
      withinFridge = false;
      withinSink = false;
      withinCupboards = false;
      
    }
    cursor(ARROW);
  }
  
}

void drawLines5() {
  //Variables for the lines
  int[] lineX = { width*202/1000, width*798/1000, width, width*0/1000 };
  int[] lineY = { height*0/1000, height*827/1000, height }; 
  
  strokeWeight(1.0);
  line(lineX[0], lineY[1], lineX[3], lineY[2]);
  line(lineX[0], lineY[1], lineX[1], lineY[1]);
  line(lineX[0], lineX[3], lineX[0], lineY[1]);
  line(lineX[1], lineY[1], lineX[2], lineY[2]);
  line(lineX[1], lineX[3], lineX[1], lineY[1]);

}

void drawDoor5() {
  //Variables for the door
  int[] doorX = { width*60/1000, width*162/1000 };
  int[] doorY = { height*483/1000, height*950/1000, height*863/1000, height*396/1000 };
  
  //Variables for the door window
  int[] doorWindowX = { width*101/1000, width*67/1000 };
  int[] doorWindowY = { height*467/1000, height*495/1000, height*930/1000,  height*900/1000 };
  
  //Variables for the doorknob
  int[] doorKnobXYWH = { width*151/1000, height*638/1000, width*14/1000, height*37/1000 };
  
  strokeWeight(0);
  fill(doorColor5);
  quad(doorX[0], doorY[0], doorX[0], doorY[1], doorX[1], doorY[2], doorX[1], doorY[3]);
  
  fill(doorWindow5);
  quad(doorWindowX[0], doorWindowY[0], doorWindowX[1], doorWindowY[1], doorWindowX[1], doorWindowY[2], doorWindowX[0], doorWindowY[3]);
  
  fill(doorKnob5);
  ellipse(doorKnobXYWH[0], doorKnobXYWH[1], doorKnobXYWH[2], doorKnobXYWH[3]);
}


void drawCounter() {
  int[] counterWoodX = { width*889/1000, width*979/1000, width*767/1000, width*556/1000,  };
  int[] counterWoodY = { height*827/1000, height*983/1000, height*723/1000, height*880/1000 };
  
  int[] counterTopX = { counterWoodX[1], counterWoodX[0], width*707/1000, width*797/1000, width*768/1000, counterWoodX[3] };
  int[] counterTopY = { counterWoodY[0], counterWoodY[2], height*671/1000 };
  
  fill(counterwoodColor);
  quad(counterWoodX[0], counterWoodY[0], counterWoodX[1], counterWoodY[0], counterWoodX[1], counterWoodY[1], counterWoodX[0], counterWoodY[1]);
  quad(counterWoodX[0], counterWoodY[0], counterWoodX[2], counterWoodY[2], counterWoodX[2], counterWoodY[3], counterWoodX[0], counterWoodY[1]);
  quad(counterWoodX[3], counterWoodY[2], counterWoodX[2], counterWoodY[2], counterWoodX[2], counterWoodY[3], counterWoodX[3], counterWoodY[3]);
  
  noStroke();
  fill(countertopColor);
  quad(counterTopX[0], counterTopY[0], counterTopX[1], counterTopY[0], counterTopX[2], counterTopY[2], counterTopX[3], counterTopY[2]);
  quad(counterTopX[5], counterTopY[1], counterTopX[3], counterTopY[1], counterTopX[4], counterTopY[2], counterTopX[5], counterTopY[2]);
  
}

void drawOven() {
  //Main Oven Variables
  int[] ovenX = { width*656/1000, width*747/1000, width*656/1000, width*646/1000, width*737/1000,
  width*646/1000 };
  int[] ovenY = { height*723/1000, height*880/1000, height*671/1000, height*636/1000 };
  
  //Oven Light Variables
  int[] ovenLightXYWH = { ovenX[0], height*655/1000, width*7/1000, height*12/1000 };
  
  //Oven Window Variables
  int ovenWindowX[] = { ovenX[4], width*667/1000 };
  int ovenWindowY[] = { height*775/1000, height*843/1000 };
  
  //Oven Stovetop Variables
  int stovetopX[] = { width*667/1000, width*723/1000, width*728/1000, width*671/1000 };
  int stovetopY[] = { height*687/1000, height*710/1000 };
  int stovetopWH[] = { width*30/1000, height*17/1000 };
  
  fill(ovenColor);
  quad(ovenX[0], ovenY[0], ovenX[1], ovenY[0], ovenX[1], ovenY[1], ovenX[0], ovenY[1]); //look at me
  quad(ovenX[3], ovenY[2], ovenX[4], ovenY[2], ovenX[1], ovenY[0], ovenX[2], ovenY[0]); //i am the top fragger now
  quad(ovenX[3], ovenY[3], ovenX[4], ovenY[3], ovenX[4], ovenY[2], ovenX[5], ovenY[2]);
  
  fill(ovenlightColor);
  ellipse(ovenLightXYWH[0], ovenLightXYWH[1], ovenLightXYWH[2], ovenLightXYWH[3]);
  
  fill(ovenwindowColor);
  quad(ovenWindowX[0], ovenWindowY[0], ovenWindowX[1], ovenWindowY[0], ovenWindowX[1], ovenWindowY[1], ovenWindowX[0], ovenWindowY[1]);
  
  //Drawing the stovetops
  ellipse(stovetopX[0], stovetopY[0], stovetopWH[0], stovetopWH[1]);
  ellipse(stovetopX[1], stovetopY[0], stovetopWH[0], stovetopWH[1]);
  ellipse(stovetopX[2], stovetopY[1], stovetopWH[0], stovetopWH[1]);
  ellipse(stovetopX[3], stovetopY[1], stovetopWH[0], stovetopWH[1]);
  
}

void drawCupboard() {
  //Variables for the cupboards
  int cupboardX[] = { width*556/1000, width*830/1000, width*889/1000, width*979/1000, width*767/1000, width*799/1000, width*556/1000 };
  int cupboardY[] = { height*345/1000, height*430/1000, height*328/1000, height*500/1000, height*587/1000 };
  
  //Variables for the cupboard lines
  int cupboardLineX[] = { width*661/1000, width*825/1000 };
  int cupboardLineY[] = { cupboardY[0], height*385/1000, height*773/1000, cupboardY[3], height*542/1000, height*927/1000 };
  
  //Variables for the cupboard handles
  int cupboardHandleX[] = { width*645/1000, width*677/1000, width*810/1000, width*839/1000  };
  int cupboardHandleY[] = { height*783/1000, height*817/1000, height*417/1000, height*450/1000, height*438/1000, 
  height*471/1000, height*458/1000, height*492/1000, height*855/1000, height*847/1000, height*880/1000, height*822/1000 };
  
  //Drawing the cupboards
  stroke(0);
  fill(cupboardColor);
  quad(cupboardX[0], cupboardY[0], cupboardX[4], cupboardY[0], cupboardX[4], cupboardY[3], cupboardX[6], cupboardY[3]);
  quad(cupboardX[1], cupboardY[0], cupboardX[5], cupboardY[2], cupboardX[6], cupboardY[2], cupboardX[6], cupboardY[0]);
  quad(cupboardX[2], cupboardY[1], cupboardX[4], cupboardY[0], cupboardX[4], cupboardY[3], cupboardX[2], cupboardY[4]);
  quad(cupboardX[2], cupboardY[1], cupboardX[3], cupboardY[1], cupboardX[3], cupboardY[4], cupboardX[2], cupboardY[4]);
  quad(cupboardX[3], cupboardY[1], cupboardX[1], cupboardY[0], cupboardX[4], cupboardY[0], cupboardX[2], cupboardY[1]);
  
  //Drawing the cupboard lines
  fill(0);
  strokeWeight(1.0);
  stroke(0);
  line(cupboardLineX[0], cupboardLineY[0], cupboardLineX[0], cupboardLineY[3]);
  line(cupboardLineX[1], cupboardLineY[1], cupboardLineX[1], cupboardLineY[4]);
  line(cupboardLineX[1], cupboardLineY[2], cupboardLineX[1], cupboardLineY[5]);
  noStroke();
  
  //Drawing the cupboard handles
  strokeWeight(3);
  stroke(0);
  
  line(cupboardHandleX[0], cupboardHandleY[0], cupboardHandleX[0], cupboardHandleY[1]);
  
  line(cupboardHandleX[0], cupboardHandleY[2], cupboardHandleX[0], cupboardHandleY[3]);
  line(cupboardHandleX[1], cupboardHandleY[2], cupboardHandleX[1], cupboardHandleY[3]);
  
  line(cupboardHandleX[2], cupboardHandleY[4], cupboardHandleX[2], cupboardHandleY[5]);
  line(cupboardHandleX[3], cupboardHandleY[6], cupboardHandleX[3], cupboardHandleY[7]);
  
  
  line(cupboardHandleX[2], cupboardHandleY[11], cupboardHandleX[2], cupboardHandleY[8]);
  line(cupboardHandleX[3], cupboardHandleY[9], cupboardHandleX[3], cupboardHandleY[10]);
  strokeWeight(0);
}

void drawWindow5() {
  //Variables for the window
  int windowX[] = { width*949/1000, width*858/1000  };
  int windowY[] = { height*767/1000, height*638/1000, height*570/1000, height*690/1000 };
  
  fill(blue);
  quad(windowX[0], windowY[0], windowX[0], windowY[1], windowX[1], windowY[2], windowX[1], windowY[3]);
  
}

void drawSink() {
  //Sink Variables
  int sinkX[] = { width*919/1000, width*858/1000, width*818/1000, width*880/1000 };
  int sinkY[] = { height*792/1000, height*740/1000, height*758/1000, height*810/1000 };
  
  //Faucet Variables
  int faucetX[] = { width*888/1000, width*869/1000 };
  int faucetY[] = { height*758/1000, height*723/1000, height*742/1000 };
  
  fill(sinkColor5);
  quad(sinkX[0], sinkY[0], sinkX[1], sinkY[1], sinkX[2], sinkY[2], sinkX[3], sinkY[3]);
  

  strokeWeight(6);
  stroke(faucetColor5);
  line(faucetX[0], faucetY[0], faucetX[0], faucetY[1]);
  line(faucetX[0], faucetY[1], faucetX[1], faucetY[2]);
  
}

void drawTable5() {
  //Tabletop Variables
  int maxY = height;
  int tableTopX[] = { width*223/1000, width*444/1000, width*465/1000, width*121/1000,
  width*414/1000, width*394/1000, width*423/1000 };
  int tableTopY[] = { height*897/1000, height*950/1000, height*958/1000, maxY };
  
  //Table Leg Variables
  int tableLegX[] = { tableTopX[2], tableTopX[4], tableTopX[1], tableTopX[5] };
  int tableLegY[] = { height*920/1000, height*932/1000, tableTopY[0], maxY };
  
  fill(tableColor5);
  strokeWeight(0);
  quad(tableTopX[0], tableTopY[0], tableTopX[3], tableTopY[3], tableTopX[5], tableTopY[3], tableTopX[2], tableTopY[0]);
  quad(tableTopX[1], tableTopY[1], tableTopX[1], tableTopY[3], tableTopX[6], tableTopY[3], tableTopX[6], tableTopY[2]);
  
  //Table Legs
  quad(tableLegX[0], tableLegY[0], tableLegX[0], tableLegY[3], tableLegX[2], tableLegY[3], tableLegX[2], tableLegY[1]);
  quad(tableLegX[0], tableLegY[0], tableLegX[1], tableLegY[3], tableLegX[3], tableLegY[3], tableLegX[0], tableLegY[2]);
  
}

void drawPoster5() {
  //Variables for the poster
  int[] posterXY = { width*230/1000, height*450/1000 };
  int posterW = width*195/1000;
  int posterH = posterW/2;
  
  image(poster1, posterXY[0], posterXY[1], posterW, posterH);
  
}

void drawFridge() {
  //Variables for the Fridge
  int fridgeX[] = { width*446/1000, width*556/1000 };
  int fridgeY[] = { height*510/1000, height*880/1000 };
  int fridgeLineX[] = { fridgeX[0], fridgeX[1]  };
  int fridgeLineY[] = { height*640/1000 };
  int fridgeHandleX[] = { width*455/1000 };
  int fridgeHandleY[] = { height*530/1000, height*618/1000, height*670/1000, height*790/1000 };
  
  //Drawing the Fridge Body
  strokeWeight(0);
  fill(white);
  quad(fridgeX[0], fridgeY[0], fridgeX[1], fridgeY[0], fridgeX[1], fridgeY[1], fridgeX[0], fridgeY[1]);
  
  //Drawing the divider between the freezer and the fridge
  stroke(0);
  strokeWeight(1);
  line(fridgeLineX[0], fridgeLineY[0], fridgeLineX[1], fridgeLineY[0]);
  
  //Drawing the handles for the fridge
  strokeWeight(6);
  stroke(150);
  line(fridgeHandleX[0], fridgeHandleY[0], fridgeHandleX[0], fridgeHandleY[1]);
  line(fridgeHandleX[0], fridgeHandleY[2], fridgeHandleX[0], fridgeHandleY[3]);
  
}
