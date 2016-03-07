
//Things we need for the code to work
//piece
//canvas
//boundaries
//motion of the ball: speed+direction variables xSpeed and ySpeed
//position + radius of the ball - x, y, radius
//bouncing of the ball at boundaries - check x, radius against 0 & width. Check y, radius against 0 & height
//detect hitting the boundary
//changing the direction of the ball - when hits boundaries, changes xSpeed from positive to negative number




int x;
int y;
int radius;
int xspeed;
int yspeed;

void setup() {
  size(500, 500);
  radius = 5;
  x = 15;
  y = 15;
  xspeed = 3;
  yspeed = 4;
}

void draw() {
  background(255);

  ellipse(x, y, radius*4, radius*4);
   fill(235,158,252);
   noStroke();

  x = x + xspeed;
  y = y + yspeed;


  if (x + radius >= width || x - radius <= 0) {
    xspeed = -xspeed;
  }
  if (y + radius >= height || y - radius <= 0) {
    yspeed = -yspeed;
  }
}

//this was creating a single bouncing ball in class 
