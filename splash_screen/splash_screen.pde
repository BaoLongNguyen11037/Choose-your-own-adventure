//Declare Colors
//Color Variables
color brown = #724730, blue = #08ECFF, white = #FFFFFF, oak = #BB8141, lightBrown = #9B5F42, gray = #989898, gold = #FFD00F, darkBlue = #000EFC, black = #000000,
doorColor = brown, windowSky = blue, defaultColor = white, bedFrame = gray, mattressColor = white, deskColor = oak, panelColor = lightBrown, dkColor = gold,
blanketColor = darkBlue, pcColor = black, displayColor = gray, lightGray = #a1a1a1, darkGray = #505050,
laptopColor = black, screenColor = lightGray, keyboardColor = darkGray, touchpadColor = lightGray, 
white2 = #FAFAFA, skyBlue = #6680E6, yellow = #FFFF4D, gray2 = #CCCCCC, oak2 = #CC9933, brown2 = #994D00, green = #336633, beige = #E6E6CC,
frameColor = white, skyColor = skyBlue, cloudColor = white, sunColor = yellow, defaultColor2 = gray, towerColor = oak, grassColor = green, barnwallColor = brown,
barnroofColor = darkGray, houseroofColor = black, housewallColor = beige, brown3 = #994D00, grey = #808080, cream = #FFFFCC, darkGrey = #333333, oak3 = #CC8033, gold2 = #FFFF4D, 
doorColor3 = brown, deskColor3 = brown, standColor = grey, shadeColor = cream, couchbaseColor = darkGrey, couchbackColor = black, couchcushionColor = grey,
doorpanelColor = oak, doorknobColor = gold;
int textY = 0;
float textMoveY = 1.5;
float alphaVar = 0;
float alphaVar2 = 0;
int gameState = 0;
float timer = 60;

boolean misclicked = false;
boolean paused = false;
boolean interactedClock = false;
boolean text2 = false;
boolean text3 = false;

boolean AM = true;
String AMPM = "";

int hour = hour();
int minute = minute();
int second = second();

void setup() {
  size(1024, 600);
  frameRate(120);
}

void draw() {
 if (gameState == 0) {
  if (textY < height*450/1000) {
    fill(255);
    background(#CCCCCC);
    textSize(60);
    String header = "(placeholder text)";
    text(header, width*250/1000, textY);
    textY += textMoveY;
  }
  else if (textY == height*450/1000) {
    alphaVar += 0.1;
    fill(255, alphaVar);
    textSize(30);
    String press = "Left click to begin.";
    text(press, width*360/1000, height*550/1000);
    if (alphaVar >= 255) {
      alphaVar = 255;
    }
  }
  else if (misclicked == true) {
    alphaVar2 += 1;
 }
  else {
    textMoveY = 0;
  }
 }
  if (gameState == 1) {
    //System.out.print(gameState); //Debugging: Game State
    //System.out.print(interactedDoor); //Debugging: State of the exits
    if (paused == false) {
      withinDoor = false; //Clearing variables to ensure proper transfer between scenes
      withinExit1 = false;
      withinExit2 = false;
      withinExit3 = false;
      withinComputer = false;
      withinWindow = false;
      background(#CCCCCC); //Ensures that the previous room is cleared before drawing the next
      drawRoom1();
    }
  }
  if (gameState == 2) {
    //System.out.print(gameState);
    if (paused == false) {
      withinComputer = false;
      withinExit3 = false;
      background(#CCCCCC);
      drawPage2();
    }
  }
  if (gameState == 3) {
    //System.out.print(gameState);
    if (paused == false) {
      withinWindow = false;
      withinExit3 = false;
      background(#CCCCCC);
      drawPage3();
    }
  }
  if (gameState == 4) {
    //System.out.print(gameState);
    //System.out.print(interactedDoor); //Debugging: State of the exits
    if (paused == false) {
      withinDoor = false;
      withinExit1 = false;
      background(#CCCCCC);
      drawRoom4();
    }
  }
  hour = hour();
  minute = minute();
  second = second();
}

void mouseClicked() {
  //Leave the splash screen by pressing LMB
  if (gameState == 0) {
    if (mouseButton == LEFT) {
        gameState = 1;
    }
  }
  
  //A little easter egg for those who press the wrong button
  if (mouseButton == RIGHT) {
    textSize(30);
    String press2 = "Not the right mouse button.";
    text(press2, width*360/1000, height*600/1000);
    
  }
  
  //Page 1 GUI functionality
  if (withinClock == true) { //If the cursor is within the hitbox...
    if (mouseButton == LEFT) { //...and only the Left Mouse Button is pressed
      paused = true;
      if (paused == true) {
        drawClockText();
      }
    }
  }
  if (withinDoor == true) {
    if (mouseButton == LEFT) {
      gameState = 4;
      //paused = true;
      cursor(ARROW);
      System.out.print("Leaving gameState ");
      //System.out.println(gameState);
      //System.out.print(withinDoor);
      //System.out.print(withinExit1);
    }
  }
  if (withinWindow == true) {
    if (mouseButton == LEFT) {
      gameState = 3;
      cursor(ARROW);
    }
  }
  if (withinComputer == true) {
    if (mouseButton == LEFT) {
      gameState = 2;
      cursor(ARROW);
      //System.out.print("Going to the laptop.");
    }
  }
  
  //Page 2 GUI functions
  if (withinComputer2 == true) {
    if (mouseButton == LEFT) {
      paused = true;
      if (paused == true) {
        c = "You typed ''11037.''";
        drawText();
        text2 = true;
        interactedComputer = true;
      }
    }
  }
  
  //Drawing the secondary dialog box
  else if (text2 == true && interactedComputer == true) {
    paused = true;
    c = "You're not sure why you did that.";
    drawText();
    text2 = false;
  }
  
  //The exit from Page 2
  if (withinExit2 == true) {
    if (mouseButton == LEFT) {
      gameState = 1;
      cursor(ARROW);
    }
  }
  
  if (withinHouses == true) {
    if (mouseButton == LEFT) {
      paused = true;
      interactedHouses = true;
      c = "You see some houses in the distance.";
      drawText();
      text2 = true;
    }
  }
  
  else if (text2 == true && interactedHouses == true) {
    paused = true;
    interactedHouses = true;
    c = "They look nice.";
    drawText();
    text2 = false;
  }
  
  else if (text3 == true && interactedHouses == true) {
    paused = true;
    text2 = false;
    c = "...ish.";
    drawText();
  }
  
  //The exit from Page 3
  if (withinExit3 == true) {
    if (mouseButton == LEFT) {
      gameState = 1;
      cursor(ARROW);
    }
  }
  
  //The exit from Page 4
  if (withinExit1 == true) {
    if (mouseButton == LEFT) {
      gameState = 1;
      //paused = true;
      cursor(ARROW);
      //System.out.print("Leaving gameState ");
      //System.out.println(gameState);
      //System.out.print(withinDoor);
      //System.out.print(withinExit1);
    }
  }
  
  else {
    interactedComputer = false;
  }
}


void mousePressed() {
  paused = false;
}
