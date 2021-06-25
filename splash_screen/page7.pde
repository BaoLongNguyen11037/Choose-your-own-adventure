boolean withinExithouse = false;
boolean withinExit7 = false;

void drawRoom7() {
  //Variables for the entire page
  int[] page7XY = {0, 0};
  int page7W = width;
  int page7H = height;
  image(page7,0, 0, page7W, page7H);
  
  int highlightBox1X[] = { width*53/1000, width*128/1000, };
  int highlightBox1Y[] = { height*543/1000, height*961/1000 };
  int highlightBox2X[] = { width*382/1000, width*597/1000, };
  int highlightBox2Y[] = { height*434/1000, height*888/1000 };
  
  if (mouseX > highlightBox1X[0] && mouseX < highlightBox1X[1] && mouseY > highlightBox1Y[0] && mouseY < highlightBox1Y[1]) {
    withinExithouse = true;
    if (paused == false) {
      noFill();
      cursor(HAND);
      quad(highlightBox1X[0], highlightBox1Y[0], highlightBox1X[1], highlightBox1Y[0], highlightBox1X[1], highlightBox1Y[1], highlightBox1X[0], highlightBox1Y[1]);
      c = "Leave the house.";
      drawText();
    }
  }
  else if (mouseX > highlightBox2X[0] && mouseX < highlightBox2X[1] && mouseY > highlightBox2Y[0] && mouseY < highlightBox2Y[1]) {
    withinExit7 = true;
    if (paused == false) {
      noFill();
      cursor(HAND);
      quad(highlightBox2X[0], highlightBox2Y[0], highlightBox2X[1], highlightBox2Y[0], highlightBox2X[1], highlightBox2Y[1], highlightBox2X[0], highlightBox2Y[1]);
      c = "Leave the living room.";
      drawText();
    }
  }
  else {
    if (paused == false) {
      withinExithouse = false;
      withinExit7 = false;
      cursor(ARROW);
    }
  }
  //Rough estimate for corners
      float xPos = mouseX / 1024.0; //Divides current X coordinate by 1024 (screen width)
      float yPos = mouseY / 600.0; //Divides current Y coordinate by 600 (screen height)
      System.out.print("width*");
      System.out.print(xPos*1000); //Multiplies by 1000 to format into width*x/1000;
      System.out.println("/1000");
      System.out.print("height*");
      System.out.print(yPos*1000); //Multiplies by 1000 to format into height*x/1000;
      System.out.println("/1000");
  
}
