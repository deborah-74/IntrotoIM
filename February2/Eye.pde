void setup() {
  size(500, 500, P3D);
}
void draw() {

  //Draws each square
  for (int xPos = 0; xPos < width; xPos = xPos + 50) {
    fill(random(0, 255), random(0, 255), random(0, 255)); //gives each square different colours
    stroke(random(0, 255), random(0, 255), random(0, 255));
    for (int yPos = 0; yPos < height; yPos = yPos + 50) {
      fill(random(0, 255), random(0, 255), random(0, 255)); //gives each square different colours
      stroke(random(0, 255), random(0, 255), random(0, 255));
      //rotates the squares depending on location of the mouse
      if (mouseX > 300) {
        rotateY(PI/3);
        rect(xPos, yPos, 50, 50);
      } else if (mouseX < 200) {
        rotateY(PI/2);
        rect(xPos, yPos, 50, 50);
      } else if (mouseY > 300) {
        rotateX(PI/3);
        rect(xPos, yPos, 50, 50);
      } else if (mouseY < 200) {
        rotateX(PI/2);
        rect(xPos, yPos, 50, 50);
      } else {
        rect(xPos, yPos, 50, 50);
      }
    }


    //eye outline
    stroke(0, 0, 0);
    fill(random(0, 255));
    arc(250, 400, 450, 450, PI+QUARTER_PI, PI+QUARTER_PI+HALF_PI, OPEN);
    arc(250, 80, 450, 450, QUARTER_PI, QUARTER_PI+HALF_PI, OPEN);

    //Assigns random colour to big circle if mouse is pressed
    if (mousePressed == true) {
      fill(random(0, 255), random(0, 255), random(0, 255));
    } else {
      fill(random(0, 255)); //grey
    }
    ellipse(250, 240, 100, 100); //Big circle

    //smaller circle
    fill(random(0, 255)); //grey
    ellipse(250, 240, 35, 35);

    //smallest circle
    fill(random(0, 255)); //grey
    ellipse(256, 230, 10, 10);
  }
}
