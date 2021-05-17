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
int doorX1 = width*1/22, doorY1 = height*98/100;
int doorX2 = width*1/6, doorY2 = height*103/110;
int doorX3 = doorX2, doorY3 = doorY2-height*7/15;
int doorX4 = doorX1, doorY4 = doorY1-height*7/15;

//Window Frame Variables
int windowX1 = width*61/100, windowY1 = height*50/100;
int windowX2 = width*70/100, windowY2 = height*58/110;
int windowX3 = windowX2, windowY3 = windowY2-height*7/40;
int windowX4 = windowX1, windowY4 = windowY2-height*119/600;

//Window External Variables
int outsideX1 = width*615/1000, outsideY1 = height*492/1000;
int outsideX2 = width*695/1000, outsideY2 = height*515/1000;
int outsideX3 = outsideX2, outsideY3 = height*570/1000-height*5/24;
int outsideX4 = outsideX1, outsideY4 = height*570/1000-height*137/600;

//Bed Frame Variables
int footX1 = width*300/1000, footY1 = height*900/1000;
int footX2 = width*400/1000, footY2 = height*900/1000;
int footX3 = outsideX2, footY3 = height*500/1000-height*5/24;
int footX4 = outsideX1, footY4 = height*500/1000-height*137/600;

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

//Drawing what's on the other side
fill(windowSky);
quad(outsideX1, outsideY1, outsideX2, outsideY2, outsideX3, outsideY3, outsideX4, outsideY4);

//Drawing the bed frame
fill(bedFrame);
quad(footX1, footY1, footX2, footY2, footX3, footY3, footX4, footY4);

//Slope Calculator (y2-y1)/(x2-x1) 
//roomLine slope is 0.234375
//reasonable deviation is < 0.05
double rise = ((windowY2)-(windowY1)), run = ((windowX2)-(windowX1));
print(rise + "/" + run);
