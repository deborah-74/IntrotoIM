class Raindrop {
  float x;
  float y;
  int size;
  float speed;
  Raindrop(float position) {//constructor; position is placement of the raindrop
    x = position;
    y=0;
    speed = random(2, 10);//assigns random speed to the raindrop each time, between 2 and 10

    size=8;
  }

  void drawRaindrop() {//draws the raindrop

    noStroke();
    fill(0, 191, 255);//blue
    for (int i = 2; i < size; i++ ) {//draws raindrop using ellipses
      ellipse(x, y + i*4, i*2, i*2);
    }
  }

  void moveRain() {
    y = y + speed;//animates raindrop
  }

  void erase() {//moves raindrop to random position at top of the window once it touches the flower
    y = random(0, 20)
    x = random(0, 500);
  }
}

class Flower {
  int radius=100;
  int petal=100;
  int stem_width=10;
  int stem_height=100;
  Flower() {
  }

  void drawFlower() {//draws flower

    fill(0, 255, 0);//green
    rect(mouseX, mouseY+radius-10, stem_width, stem_height);//stem - follows mouse
    //petals - follows mouse
    fill(204, 153, 255);//purple
    ellipse(mouseX, mouseY-radius/2, petal, petal);
    ellipse(mouseX+radius/2, mouseY, petal, petal);
    ellipse(mouseX, mouseY+radius/2, petal, petal);
    ellipse(mouseX-radius/2, mouseY, petal, petal);
    //centre of flower - follows mouse
    fill(153, 76, 0);//brown
    ellipse(mouseX, mouseY, radius, radius);
  }

  void increase() {//increases size of flower
    radius = radius + 10;
    petal = petal + 10;
    stem_width = stem_width + 1;
    stem_height = stem_height + 10;
  }
}



Raindrop [] rain = new Raindrop[100];//array of raindrop objects

void setup() {

  size(500, 500);
  background(240, 248, 255);

  for (int i = 0; i < 100; i++) {
    rain[i] = new Raindrop(random(0, 500));//fills up the array
  }
}

Flower flower = new Flower();

void draw() {

  background(240, 248, 255);
  for (int i = 0; i < 100; i++) {
    rain[i].drawRaindrop();
    rain[i].moveRain();
  }

  flower.drawFlower();

  for (int i = 0; i < 100; i++) {
    float distance = dist(mouseX, mouseY, rain[i].x, rain[i].y);//calculates distance between raindrop and flower
    if (distance < 10) {//if the flower touches the raindrop, its size increases and the raindrop moves to random location
      flower.increase();
      rain[i].erase();
      print("yes");

    }
  }
}
