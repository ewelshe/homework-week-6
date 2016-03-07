

class Ball {
  int x;
  int y;
  int radius;
  int xspeed;
  int yspeed;

  Ball(int startx, int starty) {
    radius = 5;
    x = startx;
    y = starty;
    xspeed = 3;
    yspeed = 4;
  }

  void display() {
    ellipse(x, y, radius * 4, radius * 4);
    fill(235,158,252);
    noStroke();
}
  void move() {
    x = x + xspeed;
    y = y + yspeed;
  }

  void bounce() {
    if (x + radius >= width || x - radius <= 0) {
      xspeed = -xspeed;
    }
    if (y + radius >= height || y - radius <= 0) {
      yspeed = -yspeed;
    }
  }
}

Ball[] balls = new Ball[2];

void setup() {
  size(500, 500);
  for (int i = 0; i <balls.length; i = i +1) {
    balls[i] = new Ball((int) random(5, width-5), (int) random(5, height-5));
  }
}

void draw() {
  background(255);

  for (int i = 0; i< balls.length; i = i + 1) {
    balls[i].display();
    balls[i].move();
    balls[i].bounce();

  }
}

// to add a second independent ball you have to add it to the array that says new Ball [2] to add 
//an independent ball that doesnt follow the same route as the first ball. \
//I used a class to create the balls and an array to add another ball
