boolean withinDoor = false;
boolean withinBed = false;
boolean withinClock = false;
boolean withinComputer = false;
boolean withinWindow = false;

String c = "";
//Declare the size of the window
//fullScreen();
//strokeWeight(0);

//Guide Line 1
//int coordX1 = leg8X2, coordY1 = leg8Y3;
//int coordX2 = desktopX1, coordY2 = height*910/1000;

//Guide Line 2
//int coord2X1 = desktopX2, coord2Y1 = height*950/1000;
//int coord2X2 = desktopX3, coord2Y2 = leg1Y4;
void drawRoom1() {
  int[] highlightBox1X = { width*270/1000, width*330/1000 };
  int[] highlightBox1Y = { height*398/1000, height*504/1000 };
  
  int[] highlightBox2X = { width*45/1000, width*167/1000 };
  int[] highlightBox2Y = { height*465/1000, height*982/1000 };
  
  int[] highlightBox3X = { width*250/1000, width*650/1000 };
  int[] highlightBox3Y = { height*630/1000, height*969/1000 };
  
  int[] highlightBox4X = { width*610/1000, width*700/1000 };
  int[] highlightBox4Y = { height*368/1000, height*580/1000 };
  
  int[] highlightBox5X = { width*670/1000, width*879/1000 };
  int[] highlightBox5Y = { height*657/1000, height*846/1000 };
  
  roomLines();
  doorDraw();
  drawWindow();
  drawBed();
  drawClock();
  drawDesk();
  drawComputer();
  //Clock Hitbox
  if (mouseX < highlightBox1X[1] && mouseX > highlightBox1X[0] && mouseY > highlightBox1Y[0] && mouseY < highlightBox1Y[1]) {
    withinClock = true;
    if (paused == false) { //Makes sure you're not currently interacting with the clock
      cursor(HAND);
      noFill(); //Drawing the highlight box
      quad(highlightBox1X[0], highlightBox1Y[0], highlightBox1X[1], highlightBox1Y[0], highlightBox1X[1], highlightBox1Y[1], highlightBox1X[0], highlightBox1Y[1]);
      c = "Check the time.";
      drawText();
    }
  }
  //Door Hitbox
  else if (mouseX < highlightBox2X[1] && mouseX > highlightBox2X[0] && mouseY > highlightBox2Y[0] && mouseY < highlightBox2Y[1]) {
    withinDoor = true;
    if (paused == false) {
    cursor(HAND);
    noFill();
    quad(highlightBox2X[0], highlightBox2Y[0], highlightBox2X[0], highlightBox2Y[1], highlightBox2X[1], highlightBox2Y[1], highlightBox2X[1], highlightBox2Y[0]);
      c = "Leave the Bedroom.";
      drawText();
    }
  }
  //Drawing the bed hitbox
  else if (mouseX > highlightBox3X[0] && mouseX < highlightBox3X[1] && mouseY > highlightBox3Y[0] && mouseY < highlightBox3Y[1]) {
    withinBed = true;
    if (paused == false) {
      cursor(HAND);
      noFill();
      quad(highlightBox3X[0], highlightBox3Y[0], highlightBox3X[0], highlightBox3Y[1], highlightBox3X[1], highlightBox3Y[1], highlightBox3X[1], highlightBox3Y[0]);
      c = "You don't feel tired right now.";
      drawText();
    }
  }
  //Drawing the window hitbox
  else if (mouseX > highlightBox4X[0] && mouseX < highlightBox4X[1] && mouseY > highlightBox4Y[0] && mouseY < highlightBox4Y[1]) {
    withinWindow = true;
    noFill();
    quad(highlightBox4X[0], highlightBox4Y[0], highlightBox4X[0], highlightBox4Y[1], highlightBox4X[1], highlightBox4Y[1], highlightBox4X[1], highlightBox4Y[0]);
    c = "Peer out the window.";
    drawText();
  }
  //Drawing the laptop hitbox
  else if (mouseX > highlightBox5X[0] && mouseX < highlightBox5X[1] && mouseY > highlightBox5Y[0] && mouseY < highlightBox5Y[1]) {
    withinWindow = true;
    noFill();
    quad(highlightBox5X[0], highlightBox5Y[0], highlightBox5X[0], highlightBox5Y[1], highlightBox5X[1], highlightBox5Y[1], highlightBox5X[1], highlightBox5Y[0]);
    c = "Use the laptop.";
    drawText();
  }
  else {
    if (paused == false) { //If the game isn't currently paused...
      withinClock = false; //If the mouse isn't within or leaves any hitboxes...
      withinDoor = false;
      withinBed = false;
      withinWindow = false;
      withinComputer = false;
    }
    cursor(ARROW);
  }
}

void drawClockText() {
  if (hour > 11) {
    AM = false;
  }
  if (AM == true) {
    AMPM = "AM";
  }
  else if (AM == false) {
    AMPM = "PM";
  }
  c = "The time is " + hour + ":" + minute + ":" + second + AMPM + ".";
  drawText();
  fill(grey);
  rect(0, 500, 1024, 100);
  fill(defaultColor);
  textSize(32);
  text(c, 50, 550);
}

//void mouseClicked() {
  //if (withinClock == true) { //If the mouse is within the clock hitbox...
    //if (mouseButton == LEFT) { //...and the left mouse button is clicked...
      //interactedClock = true;
      
    //}
  //}
 // else { //If the mouse is within any hitboxes but hasn't clicked....
    //interactedClock = false;
    
  //}
  
//}

//Functions for objects in the room
void roomLines() {
  //Room Line Variables
  int roomlineXStart = width*0, roomlineYStart = height;
  int roomlineXEnd1 = width*1/2, roomlineYEnd1 = height*4/5;
  int roomlineXEnd2 = roomlineXEnd1, roomlineYEnd2 = height*0;
  int roomlineXEnd3 = width, roomlineYEnd3 = roomlineYStart;
  //Drawing Room Lines
  line(roomlineXStart, roomlineYStart, roomlineXEnd1, roomlineYEnd1);
  line(roomlineXEnd1, roomlineYEnd1, roomlineXEnd2, roomlineYEnd2);
  line(roomlineXEnd1, roomlineYEnd1, roomlineXEnd3, roomlineYEnd3);
}

void doorDraw() {
  //Door Variables
  int doorX1 = width*1/22, doorY1 = height*982/1000;
  int doorX2 = width*1/6, doorY2 = height*934/1000;
  int doorX3 = doorX2, doorY3 = doorY2-height*7/15;
  int doorX4 = doorX1, doorY4 = doorY1-height*7/15;

  //Door Panel 1 Variables
  int doorPanel1X1 = width*60/1000, doorPanel1Y1 = height*530/1000;
  int doorPanel1X2 = width*100/1000, doorPanel1Y2 = height*514/1000;
  int doorPanel1X3 = doorPanel1X2, doorPanel1Y3 = doorPanel1Y2+height*80/1000;
  int doorPanel1X4 = doorPanel1X1, doorPanel1Y4 = doorPanel1Y1+height*80/1000;

  //Door Panel 2 Variables
  int doorPanel2X1 = width*113/1000, doorPanel2Y1 = height*509/1000;
  int doorPanel2X2 = width*153/1000, doorPanel2Y2 = height*493/1000;
  int doorPanel2X3 = doorPanel2X2, doorPanel2Y3 = doorPanel2Y2+height*80/1000;
  int doorPanel2X4 = doorPanel2X1, doorPanel2Y4 = doorPanel2Y1+height*80/1000;

  //Door Panel 3 Variables
  int doorPanel3X1 = doorPanel1X1, doorPanel3Y1 = height*630/1000;
  int doorPanel3X2 = doorPanel1X2, doorPanel3Y2 = height*614/1000;
  int doorPanel3X3 = doorPanel3X2, doorPanel3Y3 = doorPanel3Y2+height*120/1000;
  int doorPanel3X4 = doorPanel3X1, doorPanel3Y4 = doorPanel3Y1+height*120/1000;

  //Door Panel 4 Variables
  int doorPanel4X1 = doorPanel2X1, doorPanel4Y1 = height*609/1000;
  int doorPanel4X2 = doorPanel2X2, doorPanel4Y2 = height*593/1000;
  int doorPanel4X3 = doorPanel4X2, doorPanel4Y3 = doorPanel4Y2+height*120/1000;
  int doorPanel4X4 = doorPanel4X1, doorPanel4Y4 = doorPanel4Y1+height*120/1000;

  //Door Panel 5 Variables
  int doorPanel5X1 = doorPanel1X1, doorPanel5Y1 = height*800/1000;
  int doorPanel5X2 = doorPanel1X2, doorPanel5Y2 = height*784/1000;
  int doorPanel5X3 = doorPanel5X2, doorPanel5Y3 = doorPanel5Y2+height*120/1000;
  int doorPanel5X4 = doorPanel5X1, doorPanel5Y4 = doorPanel5Y1+height*120/1000;

  //Door Panel 6 Variables
  int doorPanel6X1 = doorPanel2X1, doorPanel6Y1 = height*779/1000;
  int doorPanel6X2 = doorPanel2X2, doorPanel6Y2 = height*763/1000;
  int doorPanel6X3 = doorPanel6X2, doorPanel6Y3 = doorPanel6Y2+height*120/1000;
  int doorPanel6X4 = doorPanel6X1, doorPanel6Y4 = doorPanel6Y1+height*120/1000;

  //Doorknob Variables
  int doorKnobx = width*157/1000;
  int doorKnoby = height*737/1000;
  int doorKnobw = width*15/1000;
  int doorKnobh = height*30/1000;

  //Drawing the door
  fill(doorColor);
  quad(doorX1, doorY1, doorX2, doorY2, doorX3, doorY3, doorX4, doorY4);
  fill(defaultColor);

  //Drawing the door panels
  fill(panelColor);
  quad(doorPanel1X1, doorPanel1Y1, doorPanel1X2, doorPanel1Y2, doorPanel1X3, doorPanel1Y3, doorPanel1X4, doorPanel1Y4);
  quad(doorPanel2X1, doorPanel2Y1, doorPanel2X2, doorPanel2Y2, doorPanel2X3, doorPanel2Y3, doorPanel2X4, doorPanel2Y4);
  quad(doorPanel3X1, doorPanel3Y1, doorPanel3X2, doorPanel3Y2, doorPanel3X3, doorPanel3Y3, doorPanel3X4, doorPanel3Y4);
  quad(doorPanel4X1, doorPanel4Y1, doorPanel4X2, doorPanel4Y2, doorPanel4X3, doorPanel4Y3, doorPanel4X4, doorPanel4Y4);
  quad(doorPanel5X1, doorPanel5Y1, doorPanel5X2, doorPanel5Y2, doorPanel5X3, doorPanel5Y3, doorPanel5X4, doorPanel5Y4);
  quad(doorPanel6X1, doorPanel6Y1, doorPanel6X2, doorPanel6Y2, doorPanel6X3, doorPanel6Y3, doorPanel6X4, doorPanel6Y4);

  //Drawing the doorknob
  fill(dkColor);
  ellipse(doorKnobx, doorKnoby, doorKnobw, doorKnobh);
}

void drawWindow() {
  //Window Frame Variables
  int windowX1 = width*610/1000, windowY1 = height*544/1000;
  int windowX2 = width*700/1000, windowY2 = height*580/1000;
  int windowX3 = windowX2, windowY3 = windowY2-height*7/40;
  int windowX4 = windowX1, windowY4 = windowY1-height*7/40;

  //Window External Variables
  int outsideX1 = width*615/1000, outsideY1 = height*539/1000;
  int outsideX2 = width*695/1000, outsideY2 = height*572/1000;
  int outsideX3 = outsideX2, outsideY3 = outsideY2-height*8/50;
  int outsideX4 = outsideX1, outsideY4 = outsideY1-height*8/50;
  //Drawing the window frame
  fill(defaultColor);
  quad(windowX1, windowY1, windowX2, windowY2, windowX3, windowY3, windowX4, windowY4);
  fill(defaultColor);

  //Drawing what's on the other side
  fill(windowSky);
  quad(outsideX1, outsideY1, outsideX2, outsideY2, outsideX3, outsideY3, outsideX4, outsideY4);
  fill(defaultColor);
}

void drawBed() {
  //Bed Frame Variables (foot)
  int footX1 = width*250/1000, footY1 = height*900/1000;
  int footX2 = width*420/1000, footY2 = height*969/1000;
  int footX3 = footX2, footY3 = footY2-height*2/15;
  int footX4 = footX1, footY4 = footY1-height*2/15;

  //Bed Frame Variables (side)
  int sideX1 = footX2, sideY1 = footY2;
  int sideX2 = footX3, sideY2 = footY3+30;
  int sideX3 = width*650/1000, sideY3 = height*789/1000;
  int sideX4 = sideX3, sideY4 = height*860/1000;

  //Bed Frame Variables (head)
  int headX1 = width*500/1000, headY1 = height*800/1000;
  int headX2 = sideX3, headY2 = height*860/1000;
  int headX3 = headX2, headY3 = height*690/1000;
  int headX4 = headX1, headY4 = height*630/1000;

  //Mattress Variables (side)
  int msideX1 = footX2, msideY1 = footY2;
  int msideX2 = footX3, msideY2 = footY3+height*1/30;
  int msideX3 = width*650/1000, msideY3 = height*776/1000;
  int msideX4 = msideX3, msideY4 = height*860/1000;

  //Mattress Variables (top)
  int mtopX1 = footX2, mtopY1 = msideY2;
  int mtopX2 = footX1+height/height*2, mtopY2 = footY3-height*15/1000;
  int mtopX3 = width*500/1000, mtopY3 = height*720/1000;
  int mtopX4 = width*650/1000, mtopY4 = height*776/1000;

  //Blanket Variables (top)
  int blanketTopX1 = footX2, blanketTopY1 = msideY2;
  int blanketTopX2 = footX1+height/height*2, blanketTopY2 = footY3-height*15/1000;
  int blanketTopX3 = width*443/1000, blanketTopY3 = height*745/1000;
  int blanketTopX4 = width*590/1000, blanketTopY4 = height*800/1000;

  //Blanket Variables (side)
  int blanketSideX1 = footX2, blanketSideY1 = height*929/1000;
  int blanketSideX2 = footX3, blanketSideY2 = footY3+height*1/30;
  int blanketSideX3 = blanketTopX4, blanketSideY3 = blanketTopY4;
  int blanketSideX4 = blanketTopX4, blanketSideY4 = height*860/1000;
  
  //Drawing the bed frame
  fill(bedFrame);
  quad(headX1, headY1, headX2, headY2, headX3, headY3, headX4, headY4);
  fill(mattressColor); //Drawing the mattress
  quad(msideX1, msideY1, msideX2, msideY2, msideX3, msideY3, msideX4, msideY4);
  quad(mtopX1, mtopY1, mtopX2, mtopY2, mtopX3, mtopY3, mtopX4, mtopY4);
  
  
  fill(blanketColor);
  quad(blanketTopX1, blanketTopY1, blanketTopX2, blanketTopY2, blanketTopX3, blanketTopY3, blanketTopX4, blanketTopY4);
  
  //Drawing the frontmost parts of the bed
  fill(bedFrame);
  quad(footX1, footY1, footX2, footY2, footX3, footY3, footX4, footY4);
  quad(sideX1, sideY1, sideX2, sideY2, sideX3, sideY3, sideX4, sideY4);
  
  //Drawing the blanket
  fill(blanketColor);
  quad(blanketSideX1, blanketSideY1, blanketSideX2, blanketSideY2, blanketSideX3, blanketSideY3, blanketSideX4, blanketSideY4);
  fill(defaultColor);
  
}

void drawClock() {
  //Clock Variables (frame)
  int clockx = width*300/1000;
  int clocky = height*450/1000;
  int clockw = width*50/1000;
  int clockh = height*100/1000;

  //Clock Hand Variables (Hour)
  int hourX1 = clockx, hourY1 = clocky;
  int hourX2 = width*310/1000, hourY2 = height*460/1000;

  //Clock Hand Variables (Minutes)
  int minuteX1 = clockx, minuteY1 = clocky;
  int minuteX2 = width*300/1000, minuteY2 = height*406/1000;

  //Clock Hand Variables (Seconds)
  int secondX1 = clockx, secondY1 = clocky;
  int secondX2 = width*282/1000, secondY2 = height*445/1000;
  
  //Drawing the clock frame
  ellipse(clockx, clocky, clockw, clockh);

  //Drawing the hands
  strokeWeight(3);
  line(hourX1, hourY1, hourX2, hourY2);
  strokeWeight(2);
  line(minuteX1, minuteY1, minuteX2, minuteY2);
  strokeWeight(1);
  line(secondX1, secondY1, secondX2, secondY2);

}

void drawDesk() {
  //Desk Variables (Top)
  int desktopX1 = width*750/1000, desktopY1 = height*759/1000;
  int desktopX2 = width*879/1000, desktopY2 = height*808/1000;
  int desktopX3 = width*810/1000, desktopY3 = height*846/1000;
  int desktopX4 = width*670/1000, desktopY4 = height*790/1000;

  //Desk Variables (First Leg)
  int leg1X1 = desktopX3, leg1Y1 = desktopY3;
  int leg1X2 = width*822/1000, leg1Y2 = height*839/1000;
  int leg1X3 = leg1X2, leg1Y3 = leg1Y2+height*1455/10000;
  int leg1X4 = desktopX3, leg1Y4 = height*990/1000;
  //Second Half of the First Leg
  int leg2X1 = desktopX3, leg2Y1 = desktopY3;
  int leg2X2 = width*798/1000, leg2Y2 = height*840/1000;
  int leg2X3 = leg2X2, leg2Y3 = leg1Y3;
  int leg2X4 = desktopX3, leg2Y4 = leg1Y4;

  //Desk Variables (Second Leg)
  int leg3X1 = desktopX4, leg3Y1 = desktopY4;
  int leg3X2 = width*682/1000, leg3Y2 = height*796/1000;
  int leg3X3 = leg3X2, leg3Y3 = height*939/1000;
  int leg3X4 = desktopX4, leg3Y4 = height*934/1000;
  //Second Half of the Second Leg
  int leg4X1 = leg3X2, leg4Y1 = desktopY4;
  int leg4X2 = width*694/1000, leg4Y2 = leg3Y2;
  int leg4X3 = leg4X2, leg4Y3 = height*935/1000;
  int leg4X4 = leg3X2, leg4Y4 = height*940/1000;

  //Desk Variables (Third Leg)
  int leg5X1 = desktopX1, leg5Y1 = desktopY2;
  int leg5X2 = width*762/1000, leg5Y2 = leg3Y2;
  int leg5X3 = leg5X2, leg5Y3 = height*905/1000;
  int leg5X4 = desktopX1, leg5Y4 = height*910/1000;
  //Second Half of the Third Leg
  int leg6X1 = desktopX1, leg6Y1 = desktopY2;
  int leg6X2 = width*738/1000, leg6Y2 = leg3Y2;
  int leg6X3 = leg6X2, leg6Y3 = leg5Y3;
  int leg6X4 = desktopX1, leg6Y4 = leg5Y4;

  //Desk Variables (Fourth Leg)
  int leg7X1 = width*867/1000, leg7Y1 = desktopY2;
  int leg7X2 = width*855/1000, leg7Y2 = height*805/1000;
  int leg7X3 = leg7X2, leg7Y3 = height*953/1000;
  int leg7X4 = leg7X1, leg7Y4 = height*959/1000;
  //Second Half of the Fourth Leg
  int leg8X1 = desktopX2, leg8Y1 = desktopY2;
  int leg8X2 = width*867/1000, leg8Y2 = height*814/1000;
  int leg8X3 = leg8X2, leg8Y3 = height*959/1000;
  int leg8X4 = desktopX2, leg8Y4 = height*950/1000;
  
  strokeWeight(0);
  //Drawing Occluded Desk Legs
  fill(deskColor);
  quad(leg4X1, leg4Y1, leg4X2, leg4Y2, leg4X3, leg4Y3, leg4X4, leg4Y4); //Leg2 Second Half
  quad(leg5X1, leg5Y1, leg5X2, leg5Y2, leg5X3, leg5Y3, leg5X4, leg5Y4); //Leg3
  quad(leg6X1, leg6Y1, leg6X2, leg6Y2, leg6X3, leg6Y3, leg6X4, leg6Y4);
  quad(leg7X1, leg7Y1, leg7X2, leg7Y2, leg7X3, leg7Y3, leg7X4, leg7Y4); //Leg4 First Half

  //Drawing the desk
  fill(deskColor);
  quad(desktopX1, desktopY1, desktopX2, desktopY2, desktopX3, desktopY3, desktopX4, desktopY4);

  //Drawing the desk legs (8 quadrilaterals)
  fill(deskColor);
  quad(leg1X1, leg1Y1, leg1X2, leg1Y2, leg1X3, leg1Y3, leg1X4, leg1Y4); //Leg1
  quad(leg2X1, leg2Y1, leg2X2, leg2Y2, leg2X3, leg2Y3, leg2X4, leg2Y4);
  quad(leg3X1, leg3Y1, leg3X2, leg3Y2, leg3X3, leg3Y3, leg3X4, leg3Y4); //Leg2
  quad(leg8X1, leg8Y1, leg8X2, leg8Y2, leg8X3, leg8Y3, leg8X4, leg8Y4); //Leg4 Second Half
  
}

void drawComputer() {
  //Keyboard Variables
  int keyboardX1 = width*760/1000, keyboardY1 = height*765/1000;
  int keyboardX2 = width*855/1000, keyboardY2 = height*800/1000;
  int keyboardX3 = width*800/1000, keyboardY3 = height*830/1000;
  int keyboardX4 = width*700/1000, keyboardY4 = height*790/1000;

  //Screen Variables
  int screenX1 = keyboardX2, screenY1 = height*695/1000;
  int screenX2 = keyboardX1, screenY2 = height*657/1000;
  int screenX3 = keyboardX1, screenY3 = keyboardY1;
  int screenX4 = keyboardX2, screenY4 = keyboardY2;

  //Screen Display Variables
  int displayX1 = width*850/1000, displayY1 = height*700/1000;
  int displayX2 = width*765/1000, displayY2 = height*665/1000;
  int displayX3 = displayX2, displayY3 = height*760/1000;
  int displayX4 = displayX1, displayY4 = height*795/1000;

  //Touchpad Variables
  int touchpadX1 = width*760/1000, touchpadY1 = height*765/1000;
  int touchpadX2 = width*855/1000, touchpadY2 = height*800/1000;
  int touchpadX3 = width*800/1000, touchpadY3 = height*830/1000;
  int touchpadX4 = width*700/1000, touchpadY4 = height*790/1000;
  
  //Drawing the Computer
  fill(pcColor);
  quad(keyboardX1, keyboardY1, keyboardX2, keyboardY2, keyboardX3, keyboardY3, keyboardX4, keyboardY4);
  quad(screenX1, screenY1, screenX2, screenY2, screenX3, screenY3, screenX4, screenY4);
  quad(touchpadX1, touchpadY1, touchpadX2, touchpadY2, touchpadX3, touchpadY3, touchpadX4, touchpadY4);
  fill(displayColor);
  quad(displayX1, displayY1, displayX2, displayY2, displayX3, displayY3, displayX4, displayY4);
}

void drawText() {
  fill(grey);
  rect(0, 500, 1024, 100);
  fill(defaultColor);
  textSize(32);
  text(c, 50, 550);
}

//Slope Calculator (y2-y1)/(x2-x1) 
//roomLine slope is 0.234375
//reasonable deviation is < 0.05
//float rise = ((screenY2)-(screenY1)), run = ((screenX2)-(screenX1));
//println(rise + "/" + run);
//println("Measured Slope: " + abs(rise/run));
//println("Expected Slope: 0.234375");

//strokeWeight(1);
//Drawing Guide Lines
//line(coordX1, coordY1, coordX2, coordY2);
//line(coord2X1, coord2Y1, coord2X2, coord2Y2);
