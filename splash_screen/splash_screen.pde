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
      background(#CCCCCC); //Ensures that the previous room is cleared before drawing the next
      drawRoom1();
    }
  }
  if (gameState == 2) {
    //System.out.print(gameState);
    if (paused == false) {
      background(#CCCCCC);
      drawPage2();
    }
  }
  if (gameState == 3) {
    //System.out.print(gameState);
    if (paused == false) {
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
  if (gameState == 0) {
    if (mouseButton == LEFT) {
        gameState = 1;
    }
  }
  if (mouseButton == RIGHT) {
    textSize(30);
    String press2 = "Not the right mouse button.";
    text(press2, width*360/1000, height*600/1000);
    
  }
  if (withinClock == true) { //If the cursor is within the hitbox...
    if (mouseButton == LEFT) { //...and only the Left Mouse Button is pressed
      interactedClock = true;
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
      System.out.println(gameState);
      System.out.print(withinDoor);
      System.out.print(withinExit1);
    }
  }
  if (withinExit1 == true) {
    if (mouseButton == LEFT) {
      gameState = 1;
      //paused = true;
      cursor(ARROW);
      System.out.println("Leaving gameState ");
      System.out.println(gameState);
      System.out.print(withinDoor);
      System.out.print(withinExit1);
    }
  }
  else {
    
  }
}

void mousePressed() {
  paused = false;
}
