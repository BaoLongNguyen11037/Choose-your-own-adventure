//Declare the size of the window
size(1024, 600);
//fullScreen();

strokeWeight(0);

//Color Variables
color brown = #724730, blue = #08ECFF, white = #FFFFFF, oak = #BB8141, doorColor = brown, windowSky = blue, defaultColor = white, 
gray = #989898, bedFrame = gray, mattressColor = white, deskColor = oak;

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

//Door Detail Variables

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
int sideX2 = footX3, sideY2 = footY3+30;
int sideX3 = width*650/1000, sideY3 = height*789/1000;
int sideX4 = width*650/1000, sideY4 = height*860/1000;

//Bed Frame Variables (head)
int headX1 = width*500/1000, headY1 = height*800/1000;
int headX2 = width*650/1000, headY2 = height*860/1000;
int headX3 = width*650/1000, headY3 = height*690/1000;
int headX4 = width*500/1000, headY4 = height*630/1000;

//Mattress Variables (side)
int msideX1 = footX2, msideY1 = footY2;
int msideX2 = footX3, msideY2 = footY3+height*1/30;
int msideX3 = width*650/1000, msideY3 = height*776/1000;
int msideX4 = width*650/1000, msideY4 = height*860/1000;

//Mattress Variables (top)
int mtopX1 = footX2, mtopY1 = msideY2;
int mtopX2 = footX1+height/height*2, mtopY2 = footY3-height*15/1000;
int mtopX3 = width*500/1000, mtopY3 = height*720/1000;
int mtopX4 = width*650/1000, mtopY4 = height*776/1000;

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
int leg5X1 = desktopX2, leg5Y1 = desktopY2;
int leg5X2 = width*694/1000, leg5Y2 = leg3Y2;
int leg5X3 = leg4X2, leg5Y3 = height*935/1000;
int leg5X4 = desktopX2, leg5Y4 = height*940/1000;
//Second Half of the Third Leg
int leg6X1 = leg3X2, leg6Y1 = desktopY4;
int leg6X2 = width*694/1000, leg6Y2 = leg3Y2;
int leg6X3 = leg4X2, leg6Y3 = height*935/1000;
int leg6X4 = leg3X2, leg6Y4 = height*940/1000;

//Guide Line
int coordX1 = leg3X2, coordY1 = height*940/1000;
int coordX2 = desktopX1, coordY2 = height*910/1000;


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

//Drawing the mattress
fill(defaultColor);

//Drawing the bed frame
fill(bedFrame);
quad(headX1, headY1, headX2, headY2, headX3, headY3, headX4, headY4);
fill(mattressColor);
quad(msideX1, msideY1, msideX2, msideY2, msideX3, msideY3, msideX4, msideY4);
quad(mtopX1, mtopY1, mtopX2, mtopY2, mtopX3, mtopY3, mtopX4, mtopY4);
fill(bedFrame);
quad(footX1, footY1, footX2, footY2, footX3, footY3, footX4, footY4);
quad(sideX1, sideY1, sideX2, sideY2, sideX3, sideY3, sideX4, sideY4);
fill(defaultColor);

//Drawing the clock frame
ellipse(clockx, clocky, clockw, clockh);

//Drawing the hands
strokeWeight(3);
line(hourX1, hourY1, hourX2, hourY2);
strokeWeight(2);
line(minuteX1, minuteY1, minuteX2, minuteY2);
strokeWeight(1);
line(secondX1, secondY1, secondX2, secondY2);

strokeWeight(0);

//Drawing Occluded Desk Legs
fill(deskColor);
quad(leg4X1, leg4Y1, leg4X2, leg4Y2, leg4X3, leg4Y3, leg4X4, leg4Y4); //Leg2 Second Half


//Drawing the desk
fill(deskColor);
quad(desktopX1, desktopY1, desktopX2, desktopY2, desktopX3, desktopY3, desktopX4, desktopY4);

//Drawing the desk legs (8 quadrilaterals)
fill(deskColor);
quad(leg1X1, leg1Y1, leg1X2, leg1Y2, leg1X3, leg1Y3, leg1X4, leg1Y4); //Leg1
quad(leg2X1, leg2Y1, leg2X2, leg2Y2, leg2X3, leg2Y3, leg2X4, leg2Y4);
quad(leg3X1, leg3Y1, leg3X2, leg3Y2, leg3X3, leg3Y3, leg3X4, leg3Y4); //Leg2
quad(leg5X1, leg5Y1, leg5X2, leg5Y2, leg5X3, leg5Y3, leg5X4, leg5Y4); //Leg3
quad(leg6X1, leg6Y1, leg6X2, leg6Y2, leg6X3, leg6Y3, leg6X4, leg6Y4);
quad(leg1X1, leg1Y1, leg1X2, leg1Y2, leg1X3, leg1Y3, leg1X4, leg1Y4); //Leg4
quad(leg1X1, leg1Y1, leg1X2, leg1Y2, leg1X3, leg1Y3, leg1X4, leg1Y4);




//Slope Calculator (y2-y1)/(x2-x1) 
//roomLine slope is 0.234375
//reasonable deviation is < 0.05
double rise = ((coordY2)-(coordY1)), run = ((coordX2)-(coordX1));
print(rise + "/" + run);

strokeWeight(1);
//Drawing Guide Lines
line(coordX1, coordY1, coordX2, coordY2);
