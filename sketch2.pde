class Paddle {
  float x, y;
  float vy;

  Paddle(float x) {
    this.x=x;
    y=random(400);
    vy=4;
  }
  void draw() {
    noStroke();
    fill(120, 90, 48);
    rect(x, y, 15, 90);
  }
  void move() {
    y=y+vy;
    if (y<0|| y>height-90) {
      vy*=-1;
    }
  }
}
class Ball {
  float x, y, vx, vy;
  float rad;

  Ball() {
    x=random(400);
    y=random(400);
    rad=25;
    vx=random(5);
    vy=random(7);
  }
  void draw() {
    noStroke();
    fill(120, 100, 100);
    ellipse(x, y, rad, rad);
    println("1");
  }
  void bounce() {
    x += vx;
    y += vy;
    if (x < rad || x > width-rad) {
      vx = -vx;
    }
    if (y < rad || y > height-rad) {
      vy = -vy;
    }
  }
}

Paddle p1;
Paddle p2;
Ball b1;
Ball b2;
void setup()
{
  size(500, 500);
  p1=new Paddle(20);
  p2=new Paddle(460);
  b1=new Ball();
  b2=new Ball();
  colorMode(HSB, 360, 100, 100);
}
void draw() {
  background(0);
  p1.draw();
  p1.move();
  p2.draw();
  p2.move();
  b1.draw();
  b1.bounce();
  b2.draw();
  b2.bounce();
}
