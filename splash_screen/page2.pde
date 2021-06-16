boolean withinExit2 = false;
boolean withinComputer2 = false;

boolean interactedComputer = false;

void drawPage2() {
  //Highlight Box for the Exits
  int[] highlightBox1X = { width*0/1000, width*100/1000 };
  int[] highlightBox1Y = { height*0/1000, height };
  
  int[] highlightBox2X = { width*179/1000, width*820/1000 };
  int[] highlightBox2Y = { height*197/1000, height*987/1000 };
  
  int[] highlightBox3X = { width*900/1000, width };
  int[] highlightBox3Y = { height*0/1000, height };
  
  //Highlight Box for the Computer
  int[] highlightBox4X = { width*0/1000, width };
  int[] highlightBox4Y = { height*0/1000, height*100/1000 };
  
  //Draw the desk and the computer
  drawDeskpg2();
  drawLaptoppg2();
  
  //Return via the left
  if (mouseX < highlightBox1X[1] && mouseX > highlightBox1X[0] && mouseY > highlightBox1Y[0] && mouseY < highlightBox1Y[1]) {
    withinExit2 = true;
    if (paused == false) { //Makes sure you're not currently interacting with the clock
      cursor(HAND);
      noFill(); //Drawing the highlight box
      quad(highlightBox1X[0], highlightBox1Y[0], highlightBox1X[1], highlightBox1Y[0], highlightBox1X[1], highlightBox1Y[1], highlightBox1X[0], highlightBox1Y[1]);
      c = "Return to the bedroom.";
      drawText();
    }
  }
  //Return via the right
  else if (mouseX < highlightBox3X[1] && mouseX > highlightBox3X[0] && mouseY > highlightBox3Y[0] && mouseY < highlightBox3Y[1]) {
    withinExit2 = true;
    if (paused == false) { //Makes sure you're not currently interacting with the clock
      cursor(HAND);
      noFill(); //Drawing the highlight box
      quad(highlightBox3X[0], highlightBox3Y[0], highlightBox3X[1], highlightBox3Y[0], highlightBox3X[1], highlightBox3Y[1], highlightBox3X[0], highlightBox3Y[1]);
      c = "Return to the bedroom.";
      drawText();
    }
  }
  //Return via the top
  else if (mouseX < highlightBox4X[1] && mouseX > highlightBox4X[0] && mouseY > highlightBox4Y[0] && mouseY < highlightBox4Y[1]) {
    withinExit2 = true;
    if (paused == false) { //Makes sure you're not currently interacting with the clock
      cursor(HAND);
      noFill(); //Drawing the highlight box
      quad(highlightBox4X[0], highlightBox4Y[0], highlightBox4X[1], highlightBox4Y[0], highlightBox4X[1], highlightBox4Y[1], highlightBox4X[0], highlightBox4Y[1]);
      c = "Return to the bedroom.";
      drawText();
    }
  }
  //Use the Laptop
  else if (mouseX < highlightBox2X[1] && mouseX > highlightBox2X[0] && mouseY > highlightBox2Y[0] && mouseY < highlightBox2Y[1]) {
    withinComputer2 = true;
    if (paused == false) { //Makes sure you're not currently interacting with the clock
      cursor(HAND);
      noFill(); //Drawing the highlight box
      quad(highlightBox2X[0], highlightBox2Y[0], highlightBox2X[1], highlightBox2Y[0], highlightBox2X[1], highlightBox2Y[1], highlightBox2X[0], highlightBox2Y[1]);
      c = "Use the laptop.";
      drawText();
    }
  }
  else {
    if (paused == false) {
      withinExit2 = false;
      withinComputer2 = false;
    }
    cursor(ARROW);
  }
  
}

void drawDeskpg2() {
  //Desk Variables
  int deskX1 = width*117/1000, deskY1 = height;
  int deskX2 = width*882/1000, deskY2 = deskY1;
  int deskX3 = width*764/1000, deskY3 = height*650/1000;
  int deskX4 = width*234/1000, deskY4 = deskY3;

  //Drawing the Desk
  fill(deskColor);
  quad(deskX1, deskY1, deskX2, deskY2, deskX3, deskY3, deskX4, deskY4);
}

void drawLaptoppg2() {
  //Laptop Base Variables
  int baseX1 = width*264/1000, baseY1 = height*682/1000;
  int baseX2 = width*179/1000, baseY2 = height*987/1000;
  int baseX3 = width*820/1000, baseY3 = baseY2;
  int baseX4 = width*736/1000, baseY4 = baseY1;

  //Laptop Backcover Variables
  int backcvrX1 = baseX1, backcvrY1 = baseY1;
  int backcvrX2 = baseX1, backcvrY2 = height*197/1000;
  int backcvrX3 = baseX4, backcvrY3 = backcvrY2;
  int backcvrX4 = baseX4, backcvrY4 = baseY1;

  //Laptop Screen Variables
  int screenX1 = width*274/1000, screenY1 = height*215/1000;
  int screenX2 = width*726/1000, screenY2 = screenY1;
  int screenX3 = screenX2, screenY3 = height*627/1000;
  int screenX4 = screenX1, screenY4 = screenY3;

  //Keyboard Variables
  int keyboardX1 = screenX1, keyboardY1 = height*700/1000;
  int keyboardX2 = width*231/1000, keyboardY2 = height*878/1000;
  int keyboardX3 = width*768/1000, keyboardY3 = keyboardY2;
  int keyboardX4 = screenX2, keyboardY4 = keyboardY1;

  //Touchpad Variables
  int touchpadX1 = width*432/1000, touchpadY1 = height*897/1000;
  int touchpadX2 = width*412/1000, touchpadY2 = height*968/1000;
  int touchpadX3 = width*591/1000, touchpadY3 = touchpadY2;
  int touchpadX4 = width*567/1000, touchpadY4 = touchpadY1;

  //Touchpad Line Variables
  int tpdlineX1 = width*589/1000, tpdlineY1 = height*952/1000;
  int tpdlineX2 = width*410/1000, tpdlineY2 = tpdlineY1; 
  int tpdlineX3 = width*505/1000, tpdlineY3 = tpdlineY1;
  int tpdlineX4 = tpdlineX3, tpdlineY4 = height*970/1000;

  //Keyboard Line Variables
  int kblineX1 = width*305/1000, kblineY1 = keyboardY1;
  int kblineX2 = kblineX1, kblineY2 = kblineY1; 
  int kblineX3 = width*736/1000, kblineY3 = height*718/1000;
  int kblineX4 = width*263/1000, kblineY4 = kblineY3;
  //Break
  int kblineX5 = width*284/1000, kblineY5 = height*880/1000;
  int kblineX6 = width*315/1000, kblineY6 = kblineY1;
  int kblineX7 = width*747/1000, kblineY7 = height*737/1000;
  int kblineX8 = width*252/1000, kblineY8 = height*735/1000;
  //Break
  int kblineX9 = width*758/1000, kblineY9 = height*772/1000;
  int kblineX10 = width*241/1000, kblineY10 = kblineY9;
  int kblineX11 = kblineX9, kblineY11 = height*808/1000;
  int kblineX12 = width*231/1000, kblineY12 = kblineY11;
  //Break
  int kblineX13 = width*778/1000, kblineY13 = height*843/1000;
  int kblineX14 = width*227/1000, kblineY14 = kblineY13;
  int kblineX15 = width*357/1000, kblineY15 = keyboardY1;
  int kblineX16 = width*336/1000, kblineY16 = kblineY5;
  //Break
  int kblineX17 = width*389/1000, kblineY17 = kblineY5;
  int kblineX18 = width*399/1000, kblineY18 = kblineY1;
  int kblineX19 = width*431/1000, kblineY19 = kblineY17;
  int kblineX20 = width*441/1000, kblineY20 = kblineY1;
  //Break
  int kblineX21 = width*483/1000, kblineY21 = kblineY13;
  int kblineX22 = kblineX21, kblineY22 = keyboardY1;
  int kblineX23 = width*536/1000, kblineY23 = kblineY13;
  int kblineX24 = width*525/1000, kblineY24 = keyboardY1;
  //Break
  int kblineX25 = width*589/1000, kblineY25 = kblineY5;
  int kblineX26 = width*568/1000, kblineY26 = keyboardY1;
  int kblineX27 = width*635/1000, kblineY27 = kblineY5;
  int kblineX28 = width*610/1000, kblineY28 = keyboardY1;
  //Break
  int kblineX29 = width*694/1000, kblineY29 = kblineY5;
  int kblineX30 = width*652/1000, kblineY30 = keyboardY1;
  int kblineX31 = width*736/1000, kblineY31 = kblineY5;
  int kblineX32 = kblineX29, kblineY32 = keyboardY1;

  //Drawing the Laptop Base
  fill(laptopColor);
  quad(baseX1, baseY1, baseX2, baseY2, baseX3, baseY3, baseX4, baseY4);

  //Drawing the Laptop Backcover
  quad(backcvrX1, backcvrY1, backcvrX2, backcvrY2, backcvrX3, backcvrY3, backcvrX4, backcvrY4);

  //Drawing the Laptop Screen
  fill(screenColor);
  quad(screenX1, screenY1, screenX2, screenY2, screenX3, screenY3, screenX4, screenY4);

  //Drawing the Keyboard
  fill(keyboardColor);
  quad(keyboardX1, keyboardY1, keyboardX2, keyboardY2, keyboardX3, keyboardY3, keyboardX4, keyboardY4);

  //Drawing the Touchpad
  fill(touchpadColor);
  quad(touchpadX1, touchpadY1, touchpadX2, touchpadY2, touchpadX3, touchpadY3, touchpadX4, touchpadY4);

  //Drawing the touchpad lines
  stroke(black);
  line(tpdlineX1, tpdlineY1, tpdlineX2, tpdlineY2);
  line(tpdlineX3, tpdlineY3, tpdlineX4, tpdlineY4);

  //Drawing the keyboard lines
  line(kblineX1, kblineY1, kblineX2, kblineY2);
  line(kblineX3, kblineY3, kblineX4, kblineY4);
  line(kblineX5, kblineY5, kblineX6, kblineY6);
  line(kblineX7, kblineY7, kblineX8, kblineY8);
  line(kblineX9, kblineY9, kblineX10, kblineY10);
  line(kblineX11, kblineY11, kblineX12, kblineY12);
  line(kblineX13, kblineY13, kblineX14, kblineY14);
  line(kblineX15, kblineY15, kblineX16, kblineY16);
  line(kblineX17, kblineY17, kblineX18, kblineY18);
  line(kblineX19, kblineY19, kblineX20, kblineY20);
  line(kblineX21, kblineY21, kblineX22, kblineY22);
  line(kblineX23, kblineY23, kblineX24, kblineY24);
  line(kblineX25, kblineY25, kblineX26, kblineY26);
  line(kblineX27, kblineY27, kblineX28, kblineY28);
  line(kblineX29, kblineY29, kblineX30, kblineY30);
  line(kblineX31, kblineY31, kblineX32, kblineY32);

}
