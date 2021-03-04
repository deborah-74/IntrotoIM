//Deborah Agboola
//Midterm
//Intro to IM
//Professor Shiloh
//SNAKE GAME

//global variables
ArrayList<Integer> xPosition = new ArrayList<Integer>();//dynamic array to store x position of each individual snake block - measured in units of blocksize
ArrayList<Integer> yPosition = new ArrayList<Integer>();//dynamic array to store y position of each individual snake block - measured in units of blocksize
int blockSize = 40;
int widthInBlocks;//width of window in blocks
int heightInBlocks;//height of window in blocks
int direction;
//arrays to store X and Y direction of snake
int [] xDirection = {0, 0, 1, -1};
int [] yDirection = {1, -1, 0, 0};

int speed = 3;//speed of snake

Apple food;
Bomb newBomb;
Banana newBanana;
boolean gameOver = false;
int startX = 250;
int score;

//declare image objects
PImage apple;
PImage gameover;
PImage start;
PImage background;
PImage bomb;
PImage banana;


import processing.sound.*;
SoundFile munch;//sound of snake eating
SoundFile music;//background music

class Apple {
  int appleX;
  int appleY;

  Apple() {
    appleX = 10;
    appleY = 5;
    apple = loadImage("apple.png");//load apple image file
  }

  void placeApple() {//places the apple image on the screen
    image(apple, appleX*blockSize, appleY*blockSize, 40, 40);//displays apple
  }

  void randomPosition() {//changes the position of the apple
    appleX = int(random(0, widthInBlocks));//random X position
    appleY = int(random(0, heightInBlocks));//random Y position
  }
}

class Bomb {
  int bombX;
  int bombY;

  Bomb() {
    bomb = loadImage("bomb.png");
    bombX = int(random(0, widthInBlocks));
    bombY = int(random(0, heightInBlocks));
  }

  void placeBomb() {//places the bomb image on the screen
    image(bomb, bombX*blockSize, bombY*blockSize, 80, 80);//changes the position of the bomb
  }

  void randomBomb() {
    bombX = int(random(0, widthInBlocks));//random X position
    bombY = int(random(0, heightInBlocks));//random Y position
  }
}

class Banana {
  int bananaX;
  int bananaY;

  Banana() {
    banana = loadImage("banana.png");
    bananaX = int(random(0, widthInBlocks));
    bananaY = int(random(0, heightInBlocks));
  }

  void placeBanana() {
    image(banana, bananaX*blockSize, bananaY*blockSize, 40, 40);
  }

  void randomBanana() {
    bananaX = int(random(0, widthInBlocks));
    bananaY = int(random(0, heightInBlocks));
  }
}

void setup() {
  size(800, 800);
  heightInBlocks = height/blockSize;//height of the window in block units
  widthInBlocks = width/blockSize;//width of the window in block units

  background(0);//black screen
  xPosition.add(10);//add x position of initial snake into the array list
  yPosition.add(10);//add y position of initial snake into the array list

  //initialise objects
  food = new Apple();
  newBomb = new Bomb();
  newBanana = new Banana();

  //initialise sound files
  munch = new SoundFile(this, "sounds/munch.mp3");
  music = new SoundFile(this, "sounds/music.mp3");
  music.loop();//repeat sound when it ends
}

void draw() {
  background(0);//clears screen
  collision();//call collision function
  score = xPosition.size() - 1;//number of points
  start = loadImage("start.png");//load starting image
  image(start, startX, 300, 300, 168);

  textAlign(CENTER, TOP); //instructions
  textSize(25);
  fill(255);
  text("INSTRUCTIONS", 50, 20, 700, 700);
  String instructions = "This is a snake game. It's very straightforward, but if you need instructions, here you go! Snake hungry. Snake eat apple. Snake don't eat snakeself. Snake move up, down, left, right. Got it?";
  textAlign(RIGHT);
  textAlign(CENTER);
  text(instructions, 70, 80, 600, 600);
  text(instructions, 70, 80, 600, 600);

  if (startX == 1000) {//if start image is off screen
    background(0);//clear screen
    background = loadImage("background.jpg");//load background image
    image(background, 0, 0, width, height);//fill whole window with background image
    if (gameOver==false) {//if game is not over
      food.placeApple();//position the first apple

      boolean answer = snakeEat();//answer stores true or false variable depending on if snake eats the apple

      for (int i = 0; i<xPosition.size(); i++) {//draw squares at each xPosition and yPosition in the array list
        fill(255);//white
        rect(xPosition.get(i)*blockSize, yPosition.get(i)*blockSize, blockSize, blockSize, 10);
      }
      textAlign(LEFT); //score
      textSize(25);
      fill(255);
      text("Score: " + score, 10, 10, width - 20, 50);//displays score

      if (frameCount % speed == 0) {//every ten frames, do the following:
        //determines the direction of the snake
        xPosition.add(0, xPosition.get(0)+xDirection[direction]);
        yPosition.add(0, yPosition.get(0)+yDirection[direction]);

        if (answer == true) {
          food.randomPosition();//put apple in random position if snake eats it
          munch.play();//play munch sound whenever snake eats the apple
        } else {
          //remove the last integers in the array
          xPosition.remove(xPosition.size()-1);
          yPosition.remove(yPosition.size()-1);
        }
        wall();//allows snake to move through the walls
      }
      if (score % 5 == 0 && score > 0 || score % 6 == 0 && score > 0) {//place bomb every five or sixe frames
        newBomb.placeBomb();
      }

      if (score % 7 == 0 && score > 0) {//change the position of the bomb every seven frames
        newBomb.randomBomb();
      }

      if (score % 7 == 0 && score > 0) {
        newBanana.placeBanana();
      }
    } else if (gameOver == true) {//if the game is over, do the following:
      background(0);//erase screen
      gameover = loadImage("gameover.jpeg");//load gameover image
      image(gameover, 250, 300, 300, 168);//display

      textAlign(CENTER, CENTER);
      text("Click on the screen to start again", 0, 0, 800, 400);
    }
  }
}

boolean snakeEat() {//checks if snake has eaten an apple, and returns true or false
  float distance = dist(xPosition.get(0), yPosition.get(0), food.appleX, food.appleY);//calculate distance between snake and apple
  if (distance == 0) {
    return true;
  } else {
    return false;
  }
}

void keyPressed() {//changes direction of snake depending on key pressed
  if (keyCode == UP) {
    direction = 1;
  }

  if (keyCode == DOWN) {
    direction = 0;
  }

  if (keyCode == LEFT) {
    direction = 3;
  }

  if (keyCode == RIGHT) {
    direction = 2;
  }
}



void wall() {//allows snake to move through wall
  if (xPosition.get(0) < 0) {
    xPosition.set(0, widthInBlocks-1);
  }

  if (xPosition.get(0) > 20) {
    xPosition.set(0, 0);
  }

  if (yPosition.get(0) < 0) {
    yPosition.set(0, heightInBlocks-1);
  }

  if (yPosition.get(0) > 20) {
    yPosition.set(0, 0);
  }
}

boolean collision() {//checks if snake has collided with itself or a bomb
  int distBomb = int(dist(xPosition.get(0), yPosition.get(0), newBomb.bombX, newBomb.bombY));//distance between bomb and snake head
  println(distBomb);
  for (int i = 1; i < xPosition.size(); i++) {
    if (xPosition.get(0) == xPosition.get(i) && yPosition.get(0) == yPosition.get(i)) {//if snake head collides with its body
      gameOver = true;//game is over
    } else if (distBomb < 1) {//if snake collides with bomb
      gameOver = true;
    }
  }
  return gameOver;
}

void mousePressed() {//checks if user presses screen to start game
  if (mouseX > 250 && mouseX < 550 && mouseY > 300 && mouseY < 500) {
    startX = 1000;
  } else if (mouseX > 0 && mouseX < 800 && mouseY > 0 && mouseY < 800 && gameOver == true) {
    gameOver = false;
    startX = 250;

    for (int i = 0; i<xPosition.size(); i++) {//clears array list
      xPosition.remove(xPosition.get(i));
    }

    for (int i = 0; i<yPosition.size(); i++) {//clears array list
      yPosition.remove(yPosition.get(i));
    }
  }
}
