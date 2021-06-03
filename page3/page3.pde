size(1024, 600);
strokeWeight(0);

color white = #FAFAFA, skyBlue = #6680E6, yellow = #FFFF4D, gray = #CCCCCC, oak = #CC9933, brown = #994D00, green = #336633,
frameColor = white, skyColor = skyBlue, cloudColor = white, sunColor = yellow, defaultColor = gray, towerColor = oak, doorColor = brown, grassColor = green;

//Drawing the sky
fill(skyColor);
quad(307, 102, 307, 512, 717, 512, 717, 102);

//Drawing the Clouds
fill(cloudColor);
ellipse(384, 205, 50, 32);
ellipse(410, 205, 70, 44);
ellipse(410, 205, 106, 31);

ellipse(640, 205, 88, 47);
ellipse(666, 205, 59, 36);
ellipse(614, 205, 71, 38);

ellipse(512, 256, 86, 46);
ellipse(538, 256, 112, 41);

//Drawing the Sun
fill(sunColor);  
ellipse(333, 128, 109, 109);

//Drawing the terrain
fill(grassColor);
pushMatrix();
translate(307, 461);
beginShape();
vertex(0, 0);
vertex(410, 0);
vertex(410, 51);
vertex(0, 51);
endShape(CLOSE);
popMatrix();

pushMatrix();
translate(640, 461);
ellipse(0,0, 11, 34);
popMatrix();

pushMatrix();
translate(640, 461);
ellipse(0, 0, 117, 12);
popMatrix();

pushMatrix();
translate(461, 461);
ellipse(0,0, 245, 34);
popMatrix();



fill(-1644852);
pushMatrix();
translate(486, 435);
beginShape();
vertex(0, 0);
vertex(0, 51);
vertex(51, 51);
vertex(51, 0);
endShape(CLOSE);
popMatrix();

pushMatrix();
translate(614, 410);
beginShape();
vertex(0, 0);
vertex(0, 51);
vertex(51, 51);
vertex(51, 0);
endShape(CLOSE);
popMatrix();

fill(-6730496);
pushMatrix();
translate(333, 435);
beginShape();
vertex(0, 0);
vertex(0, 51);
vertex(77, 51);
vertex(77, 0);
endShape(CLOSE);
popMatrix();

fill(-11711155);
pushMatrix();
translate(307, 435);
beginShape();
vertex(0, 0);
vertex(128, 0);
vertex(0, -51);
endShape(CLOSE);
popMatrix();

fill(-3368653);
pushMatrix();
translate(435, 384);
beginShape();
vertex(0, 0);
vertex(26, 0);
vertex(13, -51);
endShape(CLOSE);
popMatrix();

fill(-15066598);
pushMatrix();
translate(486, 435);
beginShape();
vertex(-13, 0);
vertex(26, -26);
vertex(64, 0);
endShape(CLOSE);
popMatrix();

fill(-16777216);
pushMatrix();
translate(588, 409);
beginShape();
vertex(13, 0);
vertex(89, 0);
vertex(51, -26);
endShape(CLOSE);
popMatrix();

//Drawing the Houses
fill(doorColor);
pushMatrix();
translate(512, 435);
beginShape();
vertex(0, 26);
vertex(0, 51);
vertex(13, 51);
vertex(13, 26);
endShape(CLOSE);
popMatrix();

pushMatrix();
translate(640, 435);
beginShape();
vertex(0, 0);
vertex(0, 26);
vertex(13, 26);
vertex(13, 0);
endShape(CLOSE);
popMatrix();

//Drawing the clock tower
fill(-3368653);  
pushMatrix();
translate(435, 384);
beginShape();
vertex(0, 0);
vertex(0, 77);
vertex(26, 77);
vertex(26, 0);
endShape(CLOSE);
popMatrix();

fill(frameColor);
ellipse(448, 397, 24, 24);

//Drawing the Inner Window Frame
fill(frameColor);
quad(307, 77, 307, 537, 280, 537, 280, 77);
quad(717, 77, 717, 537, 743, 537, 743, 77);
quad(280, 102, 743, 102, 743, 76, 280, 76);
quad(280, 538, 743, 538, 743, 512, 280, 512);
  

//Drawing the Outer Window Frame
fill(defaultColor);
quad(254, 51, 769, 51, 769, 76, 254, 76);
quad(254, 538, 769, 538, 769, 564, 254, 564);
quad(280, 76, 280, 538, 254, 538, 254, 76);
quad(769, 76, 769, 538, 743, 538, 743, 76);
