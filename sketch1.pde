class Ball {
  float x, y;
  float vx, vy;
  float size = 10;
  float c;

  Ball(float x, float y, float hue1) {
    this.x = x;
    this.y = y;
    this.c= hue1;
    vx = random(1);
    vy = random(1);
  }

  void draw() {
    noStroke();
    fill(c, 100, 100);
    ellipse(x, y, size*2, size*2);
  }

  void move() {
    x += vx;
    y += vy;
    if (x < size || x > width-size) {
      vx = -vx;
    }
    if (y < size || y > height-size) {
      vy = -vy;
    }
  }
}

ArrayList<Ball> list;
float hue;
void setup() {

  size(500, 500);
  colorMode(HSB, 360, 100, 100);

  hue=0;
  list = new ArrayList<Ball>();

  for (int x = 20; x < width-20; x += 20) {      
    for (int y = 20; y < height-20; y += 20) {
      hue=hue+0.7;
      list.add(new Ball(x, y, hue));
    }
  }
}

void draw() {
  background(255);

  for (int i = 0; i < list.size(); i += 1) {
    list.get(i).draw();
    list.get(i).move();
  }
}
