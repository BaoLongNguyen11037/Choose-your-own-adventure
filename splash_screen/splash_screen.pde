//Declare Colors

//Shades
color white = #FFFFFF, white2 = #FAFAFA, bgColor = #CCCCCC, lightGray = #a1a1a1, lightGray1 = #989898, lightGray2 = #808080, darkGray = #505050, darkGray1 = #333333, black = #000000,

//Colours
oak = #BB8141, oak1 = #CC8033, lightBrown = #9B5F42, brown = #724730, brown2 = #994D00, cream = #FFFFCC, yellow = #FFFF4D, gold = #FFD00F, gold1 = #FFFF4D, green = #336633, 
skyBlue = #6680E6, blue = #08ECFF, darkBlue = #000EFC, beige = #E6E6CC,

//Assigning Variables

//Page 1
defaultColor = white, doorColor = brown, windowSky = blue, bedFrame = lightGray1, mattressColor = white, deskColor = oak, panelColor = lightBrown, dkColor = gold,
blanketColor = darkBlue, pcColor = black, displayColor = lightGray1,

//Page 2
laptopColor = black, screenColor = lightGray, keyboardColor = darkGray, touchpadColor = lightGray, //Page 2

//Page 3
frameColor = white, skyColor = skyBlue, cloudColor = white, sunColor = yellow, defaultColor2 = lightGray1, towerColor = oak1, grassColor = green, barnwallColor = brown,
barnroofColor = darkGray, houseroofColor = black, housewallColor = beige,

//Page 4
deskColor3 = brown, standColor = lightGray2, shadeColor = cream, couchbaseColor = darkGray1, couchbackColor = black, couchcushionColor = lightGray2,
doorpanelColor = oak, doorknobColor = gold;

int textY = 0;
float textMoveY = 1.5;
float alphaVar = 0;
float alphaVar2 = 0;
int gameState = 5;
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
  if (gameState == 5) {
    //System.out.print(gameState);
    //System.out.print(interactedDoor); //Debugging: State of the exits
    if (paused == false) {
      
      background(#CCCCCC);
      drawRoom5();
    }
  }
  if (gameState == 6) {
    //System.out.print(gameState);
    //System.out.print(interactedDoor); //Debugging: State of the exits
    if (paused == false) {
      
      background(#CCCCCC);
      drawRoom6();
    }
  }
  if (gameState == 7) {
    //System.out.print(gameState);
    //System.out.print(interactedDoor); //Debugging: State of the exits
    if (paused == false) {
      
      background(#CCCCCC);
      drawRoom6();
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
      //System.out.print("Leaving gameState ");
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
      interactedComputer = true;
      if (paused == true) {
        c = "You typed ''11037.''";
        drawText();
        text2 = true;
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
  else if (withinExit2 == true) {
    if (mouseButton == LEFT) {
      gameState = 1;
      cursor(ARROW);
    }
  }
  
  //Page 3 GUI functions
  else if (withinHouses == true) {
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
    c = "They look nice.";
    drawText();
    text2 = false;
    text3 = true;
  }
  
  else if (text3 == true && interactedHouses == true) {
    paused = true;
    text3 = false;
    c = "...ish.";
    drawText();
  }
  
  else if (withinClouds == true) {
    if (mouseButton == LEFT) {
      paused = true;
      c = "They're just clouds.";
      drawText();
    }
  }
  
  else if (withinStable == true) {
    if (mouseButton == LEFT) {
      paused = true;
      c = "It's just a stable. Nothing more, nothing less.";
      drawText();
    }
  }
  
  else if (withinClocktower == true) {
    if (mouseButton == LEFT) {
      paused = true;
      c = "It's a clock tower.";
      drawText();
    }
  }
  
  else if (withinSun == true) {
    if (mouseButton == LEFT) {
      paused = true;
      c = "You're not sure why you're able to look at the sun,";
      drawText();
      text2 = true;
      interactedSun = true;
    }
  }
  
  else if (interactedSun == true && text2 == true) {
    if (mouseButton == LEFT) {
      paused = true;
      c = "or why it's so big,";
      drawText();
      text2 = false;
      text3 = true;
    }
  }
  
  else if (interactedSun == true && text3 == true) {
    if (mouseButton == LEFT) {
      paused = true;
      c = "but it's probably best that you don't question it.";
      drawText();
      text3 = false;
    }
  }
  
  //The exit from Page 3
  else if (withinExit3 == true) {
    if (mouseButton == LEFT) {
      gameState = 1;
      cursor(ARROW);
    }
  }
  
  //Go to the bedroom from Page 4
  else if (withinExit1 == true) {
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
  
  //Go to the kitchen from Page 4
  else if (withinKitchen == true) {
    if (mouseButton == LEFT) {
      gameState = 5;
      //paused = true;
      cursor(ARROW);
      //System.out.print("Leaving gameState ");
      //System.out.println(gameState);
      //System.out.print(withinDoor);
      //System.out.print(withinExit1);
    }
  }
  
  //Go to the bathroom from Page 4
  else if (withinBathroom == true) {
    if (mouseButton == LEFT) {
      gameState = 6;
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
    interactedHouses = false;
    interactedSun = false;
    text2 = false;
    text3 = false;
  }
}


void mousePressed() {
  paused = false;
}
