//Declare the size of the window
size(1024, 600);
//fullScreen();

//Color Variables
color brown = #724730, blue = #08ECFF, white = #FFFFFF, doorColor = brown, windowSky = blue, defaultColor = white, 
gray = #989898, bedFrame = gray;

//Room Line Variables
int roomlineXStart = width*0, roomlineYStart = height;
int roomlineXEnd1 = width*1/2, roomlineYEnd1 = height*4/5;
int roomlineXEnd2 = roomlineXEnd1, roomlineYEnd2 = height*0;
int roomlineXEnd3 = width, roomlineYEnd3 = roomlineYStart;

//Door Variables
int doorX1 = width*1/22, doorY1 = height*982/1000;
int doorX2 = width*1/6, doorY2 = height*934/1000;
int doorX3 = doorX2, doorY3 = doorY2-height*7/15;
int doorX4 = doorX1, doorY4 = doorY1-height*7/15;

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

//Bed Frame Variables (foot)
int footX1 = width*250/1000, footY1 = height*900/1000;
int footX2 = width*420/1000, footY2 = height*969/1000;
int footX3 = footX2, footY3 = footY2-height*2/15;
int footX4 = footX1, footY4 = footY1-height*2/15;

//Bed Frame Variables (side)
int sideX1 = footX2, sideY1 = footY2;
int sideX2 = footX3, sideY2 = footY3+10;
int sideX3 = width*650/1000, sideY3 = height*760/1000;
int sideX4 = width*650/1000, sideY4 = height*860/1000;

//Bed Frame Variables (head)
int headX1 = width*500/1000, headY1 = height*800/1000;
int headX2 = width*650/1000, headY2 = height*860/1000;
int headX3 = width*650/1000, headY3 = height*680/1000;
int headX4 = width*500/1000, headY4 = height*650/1000;

//Drawing Room Lines
line(roomlineXStart, roomlineYStart, roomlineXEnd1, roomlineYEnd1);
line(roomlineXEnd1, roomlineYEnd1, roomlineXEnd2, roomlineYEnd2);
line(roomlineXEnd1, roomlineYEnd1, roomlineXEnd3, roomlineYEnd3);

//Drawing the door
fill(doorColor);
quad(doorX1, doorY1, doorX2, doorY2, doorX3, doorY3, doorX4, doorY4);
fill(defaultColor);

//Drawing the window frame
fill(defaultColor);
quad(windowX1, windowY1, windowX2, windowY2, windowX3, windowY3, windowX4, windowY4);
fill(defaultColor);

//Drawing what's on the other side
fill(windowSky);
quad(outsideX1, outsideY1, outsideX2, outsideY2, outsideX3, outsideY3, outsideX4, outsideY4);
fill(defaultColor);

//Drawing the bed frame
fill(bedFrame);
quad(headX1, headY1, headX2, headY2, headX3, headY3, headX4, headY4);
quad(footX1, footY1, footX2, footY2, footX3, footY3, footX4, footY4);
quad(sideX1, sideY1, sideX2, sideY2, sideX3, sideY3, sideX4, sideY4);
fill(defaultColor);

//Slope Calculator (y2-y1)/(x2-x1) 
//roomLine slope is 0.234375
//reasonable deviation is < 0.05
double rise = ((headY4)-(headY3)), run = ((headX4)-(headX3));
print(rise + "/" + run);
