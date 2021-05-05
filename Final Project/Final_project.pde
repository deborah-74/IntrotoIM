import processing.serial.*;
Serial port;

PImage maze;
PImage title;
PImage start;
PImage space;
PImage rules;
PImage next;
PImage mercury;
PImage mars;
PImage venus;
PImage earth;
PImage saturn;
PImage neptune;
PImage uranus;
PImage jupiter;
PImage correct;
PImage keys;
PImage timer;
PImage wrong;
PImage thanks;

int hover = 0;
boolean menu = true;
boolean instructions = false;
boolean game = false;
boolean first = false;
boolean second = false;
boolean third = false;
boolean fourth = false;
boolean fifth = false;
boolean sixth = false;
boolean seventh = false;
boolean eighth = false;
boolean ninth = false;
boolean tenth = false;
boolean correctPage = false;
boolean falsePage = false;
boolean finalPage = false;

boolean done1 = false;
boolean done2 = false;
boolean done3 = false;
boolean done4 = false;
boolean done5 = false;
boolean done6 = false;
boolean done7 = false;
boolean done8 = false;
boolean done9 = false;
boolean done10 = false;

boolean rightAnswer = false;


int level = 0;

String text1 = "Listen carefully. The Octavius II Rover has been stranded in an unknown land on Scitra Galactica and its engines are faulty. It appears to be a maze. You have been tasked with the most important task of the century: helping the Octavius II Rover navigate its way out of there. All you have to do is answer a series of questions that will restore energy back to the engines for a limited amount of time. Are you up for this challenge?";
PFont font;
int counter = 400;


import processing.sound.*;
SoundFile countdown;
SoundFile buzzer;
SoundFile music;

void setup() {
  size(900, 750);
  background(255);
  port = new Serial(this, Serial.list()[3], 9600); 
  port.bufferUntil('\n');
  smooth();
  font = createFont("Monospaced", 48);
  textFont(font, 20);

  countdown = new SoundFile(this, "countdown.mp3");
  buzzer = new SoundFile(this, "wrong.mp3");

  music = new SoundFile(this, "music.mp3");
  music.loop();//repeat sound when it ends
}

void draw() {
  //Start page
  if (menu == true) {

    space = loadImage("space.jpeg");
    image(space, 0, 0, width, height);

    maze = loadImage("maze.png");
    image(maze, 50, 50, width-100, height-100);

    title = loadImage("space maze.png");
    image(title, 250, 25, 400, 75);

    start = loadImage("start.png");
    image(start, 365, 350, 170, 40);
    hover = 0;
    //hover effect for button
    if (mouseX > 350 && mouseX < 550 && mouseY > 328 && mouseY < 428) {
      hover = 255;
    }

    stroke(255, 255, 255, hover);
    noFill();
    strokeWeight(10);
    rect(350, 328, 200, 80);
  }

  //instructions page
  if (instructions == true) {

    space = loadImage("space.jpeg");//background image
    image(space, 0, 0, width, height);
    typewriteText();//typing effect

    rules = loadImage("instructions.png");
    image(rules, 250, 100, 400, 75);

    next = loadImage("continue.png");
    image(next, 365, 650, 170, 40);

    //hover effect
    hover = 0;
    if (mouseX > 350 && mouseX < 550 && mouseY > 628 && mouseY < 728) {
      hover = 255;
    }
    stroke(255, 255, 255, hover);
    noFill();
    strokeWeight(10);
    rect(350, 628, 200, 80);
  }

  //loads first question page
  if (first == true && done1 == false) {
    space = loadImage("space.jpeg");
    image(space, 0, 0, width, height);
    textFont(font, 36);
    String firstQ = "Which is the smallest planet within our solar system?"; //first question
    text(firstQ, 25, 200, width-50, height);

    venus = loadImage("venus.png");//option 1
    image(venus, 100, 550, 170, 40);

    //rectangle around button
    stroke(255, 255, 255, 255);
    noFill();
    strokeWeight(10);
    rect(86, 530, 200, 80);

    mercury = loadImage("mercury.png");//option 2
    image(mercury, 350, 550, 190, 55);

    //rectangle around button
    stroke(255, 255, 255, 255);
    noFill();
    strokeWeight(10);
    rect(335, 530, 230, 80);

    mars = loadImage("mars.png");//option 3
    image(mars, 630, 550, 170, 40);

    //rectangle around button
    stroke(255, 255, 255, 255);
    noFill();
    strokeWeight(10);
    rect(615, 530, 230, 80);

    level = 1;
  }


  //loads second question page
  if (second == true && done2 == false) {
    space = loadImage("space.jpeg");
    image(space, 0, 0, width, height);
    textFont(font, 36);
    String firstQ = "The moon called Titan orbits which planet?"; //second question
    text(firstQ, 25, 200, width-50, height);

    earth = loadImage("earth.png");//option 1
    image(earth, 100, 550, 170, 40);

    //rectangle around button
    stroke(255, 255, 255, 255);
    noFill();
    strokeWeight(10);
    rect(86, 530, 200, 80);

    neptune = loadImage("neptune.png");//option 2
    image(neptune, 350, 550, 190, 55);

    //rectangle around button
    stroke(255, 255, 255, 255);
    noFill();
    strokeWeight(10);
    rect(335, 530, 230, 80);

    saturn = loadImage("saturn.png");//option 3
    image(saturn, 630, 550, 190, 55);

    //rectangle around button
    stroke(255, 255, 255, 255);
    noFill();
    strokeWeight(10);
    rect(615, 530, 230, 80);

    level = 2;
  }

  //loads third question page
  if (third == true && done3 == false) {
    space = loadImage("space.jpeg");
    image(space, 0, 0, width, height);
    textFont(font, 36);
    String firstQ = "Which is the brightest planet in the night’s sky?"; //third question
    text(firstQ, 25, 200, width-50, height);

    venus = loadImage("venus.png");//option 1
    image(venus, 100, 550, 170, 40);

    //rectangle around button
    stroke(255, 255, 255, 255);
    noFill();
    strokeWeight(10);
    rect(86, 530, 200, 80);

    earth = loadImage("earth.png");//option 2
    image(earth, 350, 550, 190, 55);

    //rectangle around button
    stroke(255, 255, 255, 255);
    noFill();
    strokeWeight(10);
    rect(335, 530, 230, 80);

    uranus = loadImage("uranus.png");//option 3
    image(uranus, 630, 550, 170, 40);

    //rectangle around button
    stroke(255, 255, 255, 255);
    noFill();
    strokeWeight(10);
    rect(615, 530, 230, 80);

    level = 3;
  }

  if (fourth == true && done4 == false) {
    space = loadImage("space.jpeg");
    image(space, 0, 0, width, height);
    textFont(font, 36);
    String firstQ = "Which is the only planet not named after Greek gods or goddesses?"; //fourth question
    text(firstQ, 25, 200, width-50, height);

    mars = loadImage("mars.png");//option 1
    image(mars, 100, 550, 170, 40);

    //rectangle around button
    stroke(255, 255, 255, 255);
    noFill();
    strokeWeight(10);
    rect(86, 530, 200, 80);

    earth = loadImage("earth.png");//option 2
    image(earth, 350, 550, 190, 55);

    //rectangle around button
    stroke(255, 255, 255, 255);
    noFill();
    strokeWeight(10);
    rect(335, 530, 230, 80);

    jupiter = loadImage("jupiter.png");//option 3
    image(jupiter, 630, 550, 170, 40);

    //rectangle around button
    stroke(255, 255, 255, 255);
    noFill();
    strokeWeight(10);
    rect(615, 530, 230, 80);

    level = 4;
  }


  if (fifth == true && done5 == false) {
    space = loadImage("space.jpeg");
    image(space, 0, 0, width, height);
    textFont(font, 36);
    String firstQ = "Which planet has the fastest rotation?"; //fifth question
    text(firstQ, 25, 200, width-50, height);

    venus = loadImage("venus.png");//option 1
    image(venus, 100, 550, 170, 40);

    //rectangle around button
    stroke(255, 255, 255, 255);
    noFill();
    strokeWeight(10);
    rect(86, 530, 200, 80);

    earth = loadImage("earth.png");//option 2
    image(earth, 350, 550, 190, 55);

    //rectangle around button
    stroke(255, 255, 255, 255);
    noFill();
    strokeWeight(10);
    rect(335, 530, 230, 80);

    jupiter = loadImage("jupiter.png");//option 3
    image(jupiter, 630, 550, 170, 40);

    //rectangle around button
    stroke(255, 255, 255, 255);
    noFill();
    strokeWeight(10);
    rect(615, 530, 230, 80);

    level = 5;
  }

  if (sixth == true && done6 == false) {
    space = loadImage("space.jpeg");
    image(space, 0, 0, width, height);
    textFont(font, 36);
    String firstQ = "Which planet has the most moons?"; //sixth question
    text(firstQ, 25, 200, width-50, height);

    mercury = loadImage("mercury.png");//option 1
    image(mercury, 100, 550, 170, 40);

    //rectangle around button
    stroke(255, 255, 255, 255);
    noFill();
    strokeWeight(10);
    rect(86, 530, 200, 80);

    saturn = loadImage("saturn.png");//option 2
    image(saturn, 350, 550, 190, 55);

    //rectangle around button
    stroke(255, 255, 255, 255);
    noFill();
    strokeWeight(10);
    rect(335, 530, 230, 80);

    neptune = loadImage("neptune.png");//option 3
    image(neptune, 630, 550, 170, 40);

    //rectangle around button
    stroke(255, 255, 255, 255);
    noFill();
    strokeWeight(10);
    rect(615, 530, 230, 80);

    level = 6;
  }

  if (seventh == true && done7 == false) {
    space = loadImage("space.jpeg");
    image(space, 0, 0, width, height);
    textFont(font, 36);
    String firstQ = "Which planet has no moons?"; //seventh question
    text(firstQ, 25, 200, width-50, height);

    mercury = loadImage("mercury.png");//option 1
    image(mercury, 100, 550, 170, 40);

    //rectangle around button
    stroke(255, 255, 255, 255);
    noFill();
    strokeWeight(10);
    rect(86, 530, 200, 80);

    neptune = loadImage("neptune.png");//option 2
    image(neptune, 350, 550, 190, 55);

    //rectangle around button
    stroke(255, 255, 255, 255);
    noFill();
    strokeWeight(10);
    rect(335, 530, 230, 80);

    mars = loadImage("mars.png");//option 3
    image(mars, 630, 550, 170, 40);

    //rectangle around button
    stroke(255, 255, 255, 255);
    noFill();
    strokeWeight(10);
    rect(615, 530, 230, 80);

    level = 7;
  }

  if (eighth == true && done8 == false) {
    space = loadImage("space.jpeg");
    image(space, 0, 0, width, height);
    textFont(font, 36);
    String firstQ = "Which is the densest planet in our solar system?"; //eighth question
    text(firstQ, 25, 200, width-50, height);

    mercury = loadImage("mercury.png");//option 1
    image(mercury, 100, 550, 170, 40);

    //rectangle around button
    stroke(255, 255, 255, 255);
    noFill();
    strokeWeight(10);
    rect(86, 530, 200, 80);

    jupiter = loadImage("jupiter.png");//option 2
    image(jupiter, 350, 550, 190, 55);

    //rectangle around button
    stroke(255, 255, 255, 255);
    noFill();
    strokeWeight(10);
    rect(335, 530, 230, 80);

    earth = loadImage("earth.png");//option 3
    image(earth, 630, 550, 170, 40);

    //rectangle around button
    stroke(255, 255, 255, 255);
    noFill();
    strokeWeight(10);
    rect(615, 530, 230, 80);

    level = 8;
  }

  if (ninth == true && done9 == false) {
    space = loadImage("space.jpeg");
    image(space, 0, 0, width, height);
    textFont(font, 36);
    String firstQ = "Which planet is known as the Morning Star?"; //ninth question
    text(firstQ, 25, 200, width-50, height);

    venus = loadImage("venus.png");//option 1
    image(venus, 100, 550, 170, 40);

    //rectangle around button
    stroke(255, 255, 255, 255);
    noFill();
    strokeWeight(10);
    rect(86, 530, 200, 80);

    saturn = loadImage("saturn.png");//option 2
    image(saturn, 350, 550, 190, 55);

    //rectangle around button
    stroke(255, 255, 255, 255);
    noFill();
    strokeWeight(10);
    rect(335, 530, 230, 80);

    neptune = loadImage("neptune.png");//option 3
    image(neptune, 630, 550, 170, 40);

    //rectangle around button
    stroke(255, 255, 255, 255);
    noFill();
    strokeWeight(10);
    rect(615, 530, 230, 80);

    level = 9;
  }

  if (tenth == true && done10 == false) {
    space = loadImage("space.jpeg");
    image(space, 0, 0, width, height);
    textFont(font, 36);
    String firstQ = "Which planet is known as the Evening Star?"; //tenth question
    text(firstQ, 25, 200, width-50, height);

    venus = loadImage("venus.png");//option 1
    image(venus, 100, 550, 170, 40);

    //rectangle around button
    stroke(255, 255, 255, 255);
    noFill();
    strokeWeight(10);
    rect(86, 530, 200, 80);

    saturn = loadImage("saturn.png");//option 2
    image(saturn, 350, 550, 190, 55);

    //rectangle around button
    stroke(255, 255, 255, 255);
    noFill();
    strokeWeight(10);
    rect(335, 530, 230, 80);

    neptune = loadImage("neptune.png");//option 3
    image(neptune, 630, 550, 170, 40);

    //rectangle around button
    stroke(255, 255, 255, 255);
    noFill();
    strokeWeight(10);
    rect(615, 530, 230, 80);

    level = 10;
  }

  if (correctPage == true && countdown.isPlaying()) {

    //countdown.play();

    space = loadImage("space.jpeg");
    image(space, 0, 0, width, height);

    correct = loadImage("correct.png");
    image(correct, 250, 25, 400, 75);

    keys = loadImage("keys.png");
    image(keys, 200, 300, 500, 500);

    textFont(font, 20);
    String forward = "Move forward";
    text(forward, 380, 420, width-50, height);

    textFont(font, 20);
    String backward= "Move backward";
    text(backward, 380, 660, width-50, height);

    textFont(font, 20);
    String left = "Turn left";
    text(left, 140, 580, width-50, height);

    textFont(font, 20);
    String right = "Turn right";
    text(right, 640, 580, width-50, height);

    timer = loadImage("timer.png");
    image(timer, 350, 150, 200, 200);

    rightAnswer = true;
  } 

  if (falsePage == true && buzzer.isPlaying()) {
    space = loadImage("space.jpeg");
    image(space, 0, 0, width, height);

    wrong = loadImage("wrong.png");
    image(wrong, 250, 300, 400, 75);
  }

  if (!buzzer.isPlaying() && done10 == true) {
    falsePage = false;
    finalPage = true;
  }

  if (finalPage == true) {
    space = loadImage("space.jpeg");
    image(space, 0, 0, width, height);

    thanks = loadImage("thanks.png");
    image(thanks, 250, 300, 400, 75);

    textFont(font, 20);
    String restart = "Click the screen to restart";
    text(restart, 380, 660, width-50, height);
  }

  if (!countdown.isPlaying() && done1 == true && done2 == false) {
    correctPage = false;
    second = true;
    rightAnswer = false;
    port.write('n');
  }

  if (!countdown.isPlaying() && done2 == true && done3 == false) {
    correctPage = false;
    third = true;
    rightAnswer = false;
    port.write('n');
  }

  if (!countdown.isPlaying()  && done3 == true && done4 == false) {
    correctPage = false;
    fourth = true;
    rightAnswer = false;
    port.write('n');
  }

  if (!countdown.isPlaying() && done4 == true && done5 == false) {
    correctPage = false;
    fifth = true;
    rightAnswer = false;
    port.write('n');
  }

  if (!countdown.isPlaying() && done5 == true && done6 == false) {
    correctPage = false;
    sixth = true;
    rightAnswer = false;
    port.write('n');
  }

  if (!countdown.isPlaying() && done6 == true && done7 == false) {
    correctPage = false;
    seventh = true;
    rightAnswer = false;
    port.write('n');
  }

  if (!countdown.isPlaying() && done7 == true && done8 == false) {
    correctPage = false;
    eighth = true;
    rightAnswer = false;
    port.write('n');
  }

  if (!countdown.isPlaying() && done8 == true && done9 == false) {
    correctPage = false;
    ninth = true;
    rightAnswer = false;
    port.write('n');
  }

  if (!countdown.isPlaying() && done9 == true && done10 == false) {
    correctPage = false;
    tenth = true;
    rightAnswer = false;
    port.write('n');
  }
}

void keyPressed() {

  if (keyCode == UP && rightAnswer == true) {
    port.write('f');
  }

  if (keyCode == DOWN && rightAnswer == true) {
    port.write('b');
  }

  if (keyCode == LEFT && rightAnswer == true) {
    port.write('r');
  }

  if (keyCode == RIGHT && rightAnswer == true) {
    port.write('l');
  }
}


//stop car when key is released
void keyReleased() {
  port.write('n');
}

void mousePressed() {
  if (mouseX > 350 && mouseX < 550 && mouseY > 328 && mouseY < 428) {
    menu = false;
    instructions = true;
  }

  if (mouseX > 350 && mouseX < 550 && mouseY > 628 && mouseY < 728 && menu == false) {
    instructions = false;
    first = true;
  }

  if (instructions == false && level == 1) {//second option
    if (mouseX > 350 && mouseX < 580 && mouseY > 530 && mouseY < 610) {
      countdown.play();
      first = false;
      correctPage = true;
      second = true;
      done1 = true;
    } else if ((mouseX > 86 && mouseX < 286 && mouseY > 530 && mouseY < 610) || (mouseX > 615 && mouseX < 845 && mouseY > 530 && mouseY < 610)) {
      buzzer.play();
      first = false;
      falsePage = true;
      second = true;
      done1 = true;
    }
  }

  if (first == false && done1 == true && level == 2) {//third option
    if (mouseX > 615 && mouseX < 845 && mouseY > 530 && mouseY < 610) {
      countdown.play();
      second = false;
      correctPage = true;
      third = true;
      done2 = true;
    } else if ((mouseX > 350 && mouseX < 580 && mouseY > 530 && mouseY < 610)||(mouseX > 86 && mouseX < 286 && mouseY > 530 && mouseY < 610)) {
      buzzer.play();
      second = false;
      falsePage = true;
      third = true;
      done2 = true;
    }
  }

  if (second == false && done2 == true && level == 3) {//first option
    if (mouseX > 86 && mouseX < 286 && mouseY > 530 && mouseY < 610) {
      countdown.play();
      third = false;
      correctPage = true;
      fourth = true;
      done3 = true;
    } else if ((mouseX > 350 && mouseX < 580 && mouseY > 530 && mouseY < 610)||(mouseX > 615 && mouseX < 845 && mouseY > 530 && mouseY < 610))
    {
      buzzer.play();
      third = false;
      falsePage = true;
      fourth = true;
      done3 = true;
    }
  }

  if (third == false && done3 == true && level == 4) {//second option
    if (mouseX > 350 && mouseX < 580 && mouseY > 530 && mouseY < 610) {
      countdown.play();
      fourth = false;
      correctPage = true;
      fifth = true;
      done4 = true;
    } else if ((mouseX > 86 && mouseX < 286 && mouseY > 530 && mouseY < 610)||(mouseX > 615 && mouseX < 845 && mouseY > 530 && mouseY < 610)) {
      buzzer.play();
      fourth = false;
      falsePage = true;
      fifth = true;
      done4 = true;
    }
  }

  if (fourth == false && done4 == true && level == 5) {//third option
    if (mouseX > 615 && mouseX < 845 && mouseY > 530 && mouseY < 610) {
      countdown.play();
      fifth = false;
      correctPage = true;
      sixth = true;
      done5 = true;
    } else if ((mouseX > 350 && mouseX < 580 && mouseY > 530 && mouseY < 610)||(mouseX > 86 && mouseX < 286 && mouseY > 530 && mouseY < 610)) {
      buzzer.play();
      fifth = false;
      falsePage = true;
      sixth = true;
      done5 = true;
    }
  }

  if (fifth == false && done5 == true && level == 6) {//second option
    if (mouseX > 350 && mouseX < 580 && mouseY > 530 && mouseY < 610) {
      countdown.play();
      sixth = false;
      correctPage = true;
      seventh = true;
      done6 = true;
    } else if ((mouseX > 86 && mouseX < 286 && mouseY > 530 && mouseY < 610)||(mouseX > 615 && mouseX < 845 && mouseY > 530 && mouseY < 610)) {
      buzzer.play();
      sixth = false;
      falsePage = true;
      seventh = true;
      done6 = true;
    }
  }

  if (sixth == false && done6 == true && level == 7) {//first option
    if (mouseX > 86 && mouseX < 286 && mouseY > 530 && mouseY < 610) {
      countdown.play();
      seventh = false;
      correctPage = true;
      eighth = true;
      done7 = true;
    } else if ((mouseX > 350 && mouseX < 580 && mouseY > 530 && mouseY < 610)||(mouseX > 615 && mouseX < 845 && mouseY > 530 && mouseY < 610)) {
      buzzer.play();
      seventh = false;
      falsePage = true;
      eighth = true;
      done7 = true;
    }
  }

  if (seventh == false && done7 == true && level == 8) {//third option
    if (mouseX > 615 && mouseX < 845 && mouseY > 530 && mouseY < 610) {
      countdown.play();
      eighth = false;
      correctPage = true;
      ninth = true;
      done8 = true;
    } else if ((mouseX > 350 && mouseX < 580 && mouseY > 530 && mouseY < 610)||(mouseX > 86 && mouseX < 286 && mouseY > 530 && mouseY < 610)) {
      buzzer.play();
      eighth = false;
      falsePage = true;
      ninth = true;
      done8 = true;
    }
  }

  if (eighth == false && done8 == true && level == 9) {//first option
    if (mouseX > 86 && mouseX < 286 && mouseY > 530 && mouseY < 610) {
      countdown.play();
      ninth = false;
      correctPage = true;
      tenth = true;
      done9 = true;
    } else if ((mouseX > 350 && mouseX < 580 && mouseY > 530 && mouseY < 610)||(mouseX > 615 && mouseX < 845 && mouseY > 530 && mouseY < 610)) {
      buzzer.play();
      ninth = false;
      falsePage = true;
      tenth = true;
      done9 = true;
    }
  }

  if (ninth == false && done9 == true && level == 10) {//first option
    if (mouseX > 86 && mouseX < 286 && mouseY > 530 && mouseY < 610) {
      countdown.play();
      tenth = false;
      correctPage = true;
      done10 = true;
    } else if ((mouseX > 350 && mouseX < 580 && mouseY > 530 && mouseY < 610)||(mouseX > 615 && mouseX < 845 && mouseY > 530 && mouseY < 610)) {
      buzzer.play();
      tenth = false;
      falsePage = true;
      done10 = true;
    }
  }

  if (finalPage == true && mouseX > 0 && mouseX < width && mouseY > 0 && mouseY < height)
  {
    finalPage = false;
    menu = true;
    instructions = false;
    game = false;
    first = false;
    second = false;
    third = false;
    fourth = false;
    fifth = false;
    sixth = false;
    seventh = false;
    eighth = false;
    ninth = false;
    tenth = false;
    correctPage = false;
    falsePage = false;
    finalPage = false;
    done1 = false;
    done2 = false;
    done3 = false;
    done4 = false;
    done5 = false;
    done6 = false;
    done7 = false;
    done8 = false;
    done9 = false;
    done10 = false;
  }
}

void typewriteText() {
  if (counter < text1.length())
    counter++;
  text(text1.substring(0, counter), 50, 300, width-50, height);
}
