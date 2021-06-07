size(1024, 600); 

//Drawing the wall intersections
int[] lineX = { width*344/1000, width*656/1000, width*202/1000, width*798/1000 };
int[] lineY = { height*742/1000, height*0/1000, height };

//Drawing the Bathroom Door
int[] door1X = { width*223/1000, width};
int[] door1Y = { height*967/1000, height*432/1000, };

strokeWeight(1);
line(lineX[0], lineY[0], lineX[2], lineY[2]);
line(lineX[0], lineY[1], lineX[0], lineY[0]);
line(lineX[1], lineY[0], lineX[3], lineY[2]);
line(lineX[1], lineY[1], lineX[1], lineY[0]);
strokeWeight(0);

fill(-6730496);
quad(door1X[0], door1Y[0], door1X[0], door1Y[1], 331, 156, 331, 466);

fill(-6730496);
pushMatrix();
translate(827, 559);
beginShape();
vertex(-21, 31);
vertex(-21, -310);
vertex(-114, -393);
vertex(-114, -72);
endShape(CLOSE);
popMatrix();

strokeWeight(1);
line(672, 383, 352, 383);
strokeWeight(0);

fill(-6730496);
pushMatrix();
translate(465, 393);
beginShape();
vertex(0, 0);
vertex(0, 10);
vertex(10, 10);
vertex(10, 0);
vertex(62, 0);
vertex(62, 10);
vertex(72, 10);
vertex(72, 0);
vertex(72, -31);
vertex(83, -31);
vertex(83, -41);
vertex(-10, -41);
vertex(-10, -31);
vertex(0, -31);
endShape(CLOSE);
popMatrix();

fill(-8355712);
pushMatrix();
translate(465, 341);
beginShape();
vertex(0, 0);
vertex(0, 10);
vertex(72, 10);
vertex(72, 0);
vertex(41, 0);
vertex(41, -62);
vertex(31, -62);
vertex(31, 0);
endShape(CLOSE);
popMatrix();

fill(-52);
pushMatrix();
translate(476, 321);
beginShape();
vertex(-10, 0);
vertex(62, 0);
vertex(41, -52);
vertex(10, -52);
endShape(CLOSE);
popMatrix();

fill(-13421773);
pushMatrix();
translate(424, 362);
beginShape();
vertex(0, -10);
vertex(0, 41);
vertex(-10, 41);
vertex(-10, 31);
vertex(-72, 31);
vertex(-72, -10);
endShape(CLOSE);
popMatrix();

fill(-16777216);
pushMatrix();
translate(414, 331);
beginShape();
vertex(0, -21);
vertex(-62, -21);
vertex(-62, 52);
vertex(0, 52);
endShape(CLOSE);
popMatrix();

fill(-10066330);;
pushMatrix();
translate(414, 362);
beginShape();
vertex(0, 0);
vertex(-62, 0);
vertex(-62, 21);
vertex(0, 21);
endShape(CLOSE);
popMatrix();

fill(-13421773);
pushMatrix();
translate(424, 352);
rotate(0);
ellipse(0, 0, 40, 40);
popMatrix();

fill(-3375053);
pushMatrix();
translate(269, 248);
beginShape();
vertex(0, -10);
vertex(-31, 21);
vertex(-31, 134);
vertex(0, 103);
endShape(CLOSE);
popMatrix();

fill(-3375053);
pushMatrix();
translate(269, 414);
rotate(0);
beginShape();
vertex(0, -10);
vertex(-31, 21);
vertex(-31, 134);
vertex(0, 103);
endShape(CLOSE);
popMatrix();

fill(-3375053);
pushMatrix();
translate(321, 362);
beginShape();
vertex(0, -10);
vertex(-31, 21);
vertex(-31, 134);
vertex(0, 103);
endShape(CLOSE);
popMatrix();

fill(-3375053);
pushMatrix();
translate(321, 197);
beginShape();
vertex(0, -10);
vertex(-31, 21);
vertex(-31, 134);
vertex(0, 103);
endShape(CLOSE);
popMatrix();

fill(-3375053);
pushMatrix();
translate(724, 207);
beginShape();
vertex(0, -10);
vertex(31, 21);
vertex(31, 134);
vertex(0, 103);
endShape(CLOSE);
popMatrix();

fill(-3375053);
pushMatrix();
translate(765, 248);
beginShape();
vertex(0, -10);
vertex(31, 21);
vertex(31, 134);
vertex(0, 103);
endShape(CLOSE);
popMatrix();

fill(-3375053);
pushMatrix();
translate(765, 424);
beginShape();
vertex(0, -10);
vertex(31, 21);
vertex(31, 134);
vertex(0, 103);
endShape(CLOSE);
popMatrix();

fill(-3375053);
pushMatrix();
translate(724, 383);
beginShape();
vertex(0, -10);
vertex(31, 21);
vertex(31, 134);
vertex(0, 103);
endShape(CLOSE);
popMatrix();

fill(-179);
pushMatrix();
translate(321, 341);
ellipse(0, 0 ,20, 26);
popMatrix();

fill(-179);
pushMatrix();
translate(724, 352);
ellipse(0, 0, 19, 26);
popMatrix();
