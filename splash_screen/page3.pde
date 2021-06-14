//This page needs an unconventional exit (to the bedroom)

void drawPage3() {
  drawSky();
  drawClouds();
  drawBuildings();
  drawTerrain();
  drawFrame();
  drawCT();
  drawSun();
  
}

void drawSky() {
  //Sky Variables
  int skyboxX1 = width*300/1000, skyboxY1 = height*170/1000, skyboxX2 = skyboxX1, skyboxY2 = height*853/1000;
  int skyboxX3 = width*700/1000, skyboxY3 = skyboxY2, skyboxX4 = skyboxX3, skyboxY4 = height*99/1000;
  
  //Drawing the sky
  fill(skyColor);
  quad(skyboxX1, skyboxY1, skyboxX2, skyboxY2, skyboxX3, skyboxY3, skyboxX4, skyboxY4);
}

void drawClouds() {
  //Cloud1 Variables
  int cloud1p1X = width*375/1000, cloud1p1Y = height*342/1000;
  int cloud1p1W = width*49/1000, cloud1p1H = height*53/1000;
  int cloud1p2X = width*400/1000, cloud1p2Y = cloud1p1Y; //Second Ellipse
  int cloud1p2W = width*68/1000, cloud1p2H = height*73/1000;
  int cloud1p3X = cloud1p2X, cloud1p3Y = cloud1p1Y; //Third Ellipse
  int cloud1p3W = width*104/1000, cloud1p3H = height*52/1000;
  
  //Cloud2 Variables (testing arrays)
  int[] cloud2X = { width*625/1000, width*650/1000, width*600/1000 };
  int cloud2Y = height*342/1000;
  int[] cloud2W = { width*86/1000, width*59/1000, width*69/1000 };
  int[] cloud2H = { height*78/1000, height*60/1000, height*63/1000 };

  //Cloud3 Variables (ditto)
  int[] cloud3X = { width*500/1000, width*525/1000 };
  int cloud3Y = width*250/1000;
  int[] cloud3W = { width*84/1000, width*109/1000 };
  int[] cloud3H = { height*77/1000, height*68/1000 };
  
  //Drawing the Clouds
  fill(cloudColor);
  ellipse(cloud1p1X, cloud1p1Y, cloud1p1W, cloud1p1H);
  ellipse(cloud1p2X, cloud1p2Y, cloud1p2W, cloud1p2H);
  ellipse(cloud1p3X, cloud1p3Y, cloud1p3W, cloud1p3H);

  ellipse(cloud2X[0], cloud2Y, cloud2W[0], cloud2H[0]);
  ellipse(cloud2X[1], cloud2Y, cloud2W[1], cloud2H[1]);
  ellipse(cloud2X[2], cloud2Y, cloud2W[2], cloud2H[2]);

  ellipse(cloud3X[0], cloud3Y, cloud3W[0], cloud3H[0]);
  ellipse(cloud3X[1], cloud3Y, cloud3W[1], cloud3H[1]);
  
}

void drawSun() {
  //Sun Variables
  int sunX = width*325/1000;
  int sunY = height*213/1000;
  int sunW = width*106/1000;
  int sunH = width*106/1000;
  
  //Drawing the Sun
  fill(sunColor);  
  ellipse(sunX, sunY, sunW, sunH);
}

void drawTerrain() {
  int[] cloud2X = { width*625/1000, width*650/1000, width*600/1000 };
  //Terrain Variables (testing interchangeability)
  int ground1X[] = {  width*300/1000 , width*700/1000, };
  int[] ground1Y = { height*768/1000, height*853/1000 };
  int groundeX[] = { cloud2X[0], width*450/1000 };
  int groundeY = ground1Y[0];
  int groundeW[] = { width*29/1000, width*114/1000, width*240/1000};
  int groundeH[] = { height*5/1000, height*20/1000, height*57/1000};
  
  //Drawing the terrain
  fill(grassColor);
  quad(ground1X[0], ground1Y[0], ground1X[1], ground1Y[0], ground1X[1], ground1Y[1], ground1X[0], ground1Y[1]);
  ellipse(groundeX[0], groundeY, groundeW[0], groundeH[0]);
  ellipse(groundeX[0], groundeY, groundeW[1], groundeH[1]);
  ellipse(groundeX[1], groundeY, groundeW[2], groundeH[2]);
}

void drawBuildings() {
  int[] ground1Y = { height*768/1000, height*853/1000 };
  //Barnhouse Variables
  int[] barnWallX = { width*325/1000, width*400/1000 };
  int[] barnWallY = { height*725/1000, height*810/1000 };
  int[] barnRoofX = { width*300/1000, width*425/1000 };
  int[] barnRoofY = { barnWallY[0], height*640/1000 }; 
  
  //Drawing the "barn"
  fill(barnwallColor);
  quad(barnWallX[0], barnWallY[0], barnWallX[0], barnWallY[1], barnWallX[1], barnWallY[1], barnWallX[1], barnWallY[0]);

  fill(barnroofColor);
  triangle(barnRoofX[0], barnRoofY[0], barnRoofX[1], barnRoofY[0], barnRoofX[0], barnRoofY[1]);

    //House Variables
  int[] houseWall1X = { width*475/1000, width*524/1000 };
  int[] houseWall1Y = { barnWallY[0], height*810/1000 };
  int[] houseRoof1X = { width*462/1000, width*500/1000, width*537/1000 };
  int[] houseRoof1Y = { barnWallY[0], height*682/1000 };
  int[] houseDoor1X = { width*500/1000, width*513/1000 };
  int[] houseDoor1Y = { ground1Y[0], houseWall1Y[1] };

  //The Second House
  int[] houseWall2X = { width*600/1000, width*650/1000 }; 
  int[] houseWall2Y = { height*683/1000, ground1Y[0] };
  int[] houseRoof2X = { width*587/1000, width*661/1000, width*624/1000 };
  int[] houseRoof2Y = { houseWall2Y[0], height*638/1000 };
  int[] houseDoor2X = { width*625/1000, width*638/1000 };
  int[] houseDoor2Y = { barnWallY[0], ground1Y[0] };
  
  //Drawing the Houses
  fill(housewallColor);
  quad(houseWall1X[0], houseWall1Y[0], houseWall1X[0], houseWall1Y[1], houseWall1X[1], houseWall1Y[1], houseWall1X[1], houseWall1Y[0]);
  quad(houseWall2X[0], houseWall2Y[0], houseWall2X[0], houseWall2Y[1], houseWall2X[1], houseWall2Y[1], houseWall2X[1], houseWall2Y[0]);

  fill(houseroofColor);
  triangle(houseRoof1X[0], houseRoof1Y[0], houseRoof1X[1], houseRoof1Y[1], houseRoof1X[2], houseRoof1Y[0]);
  triangle(houseRoof2X[0], houseRoof2Y[0], houseRoof2X[1], houseRoof2Y[0], houseRoof2X[2], houseRoof2Y[1]);

  fill(doorColor);
  quad(houseDoor1X[0], houseDoor1Y[0], houseDoor1X[0], houseDoor1Y[1], houseDoor1X[1], houseDoor1Y[1], houseDoor1X[1], houseDoor1Y[0]);
  quad(houseDoor2X[0], houseDoor2Y[0], houseDoor2X[0], houseDoor2Y[1], houseDoor2X[1], houseDoor2Y[1], houseDoor2X[1], houseDoor2Y[0]);

}

void drawCT() {
  int[] ground1Y = { height*768/1000, height*853/1000 };
  //Clock Tower Variables
  int[] clcktWallX1 = { width*424/1000, width*450/1000 };
  int[] clcktWallY1 = { height*640/1000, ground1Y[0] };
  int[] clcktRoofX1 = { clcktWallX1[0], clcktWallX1[1], width*437/1000 };
  int[] clcktRoofY1 = { clcktWallY1[0], height*555/1000 };
  int[] clcktFaceXYWH = { clcktRoofX1[2], height*662/1000, width*23/1000, height*40/1000 };
  
  //Drawing the clock tower
  fill(towerColor); 
  quad(clcktWallX1[0], clcktWallY1[0], clcktWallX1[0], clcktWallY1[1], clcktWallX1[1], clcktWallY1[1], clcktWallX1[1], clcktWallY1[0]);
  triangle(clcktRoofX1[0], clcktRoofY1[0], clcktRoofX1[1], clcktRoofY1[0], clcktRoofX1[2], clcktRoofY1[1]);

  fill(frameColor);
  ellipse(clcktFaceXYWH[0], clcktFaceXYWH[1], clcktFaceXYWH[2], clcktFaceXYWH[3]);

}

void drawFrame() {
  //Inner Window Frame Variables
  int[] iwnf1xywh = { width*274/1000, height*128/1000, width*27/1000, height*767/1000 };
  int[] iwnf2xywh = { width*700/1000, height*128/1000, width*27/1000, height*767/1000 };
  int[] iwnf3xywh = { width*274/1000, height*128/1000, width*452/1000, height*43/1000 };
  int[] iwnf4xywh = { width*274/1000, height*852/1000, width*452/1000, height*43/1000 };

  //Outer Window Frame Variables
  int[] ownf1xywh = { width*249/1000, height*128/1000, width*27/1000, height*770/1000 };
  int[] ownf2xywh = { width*725/1000, height*128/1000, width*27/1000, height*770/1000 };
  int[] ownf3xywh = { width*249/1000, height*85/1000, width*503/1000, height*43/1000 };
  int[] ownf4xywh = { width*249/1000, height*894/1000, width*503/1000, height*43/1000 };

  //Drawing the Inner Window Frame
  fill(frameColor);
  rect(iwnf1xywh[0], iwnf1xywh[1], iwnf1xywh[2], iwnf1xywh[3]);
  rect(iwnf2xywh[0], iwnf2xywh[1], iwnf2xywh[2], iwnf2xywh[3]);
  rect(iwnf3xywh[0], iwnf3xywh[1], iwnf3xywh[2], iwnf3xywh[3]);
  rect(iwnf4xywh[0], iwnf4xywh[1], iwnf4xywh[2], iwnf4xywh[3]);
  
  //Drawing the Outer Window Frame
  fill(defaultColor);
  rect(ownf1xywh[0], ownf1xywh[1], ownf1xywh[2], ownf1xywh[3]);
  rect(ownf2xywh[0], ownf2xywh[1], ownf2xywh[2], ownf2xywh[3]);
  rect(ownf3xywh[0], ownf3xywh[1], ownf3xywh[2], ownf3xywh[3]);
  rect(ownf4xywh[0], ownf4xywh[1], ownf4xywh[2], ownf4xywh[3]);
}
