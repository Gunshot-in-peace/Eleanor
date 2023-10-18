PImage img;
float s;
int count;

void setup() {
  size(650, 650);
  background(255,0,0);
  noStroke();
  img = loadImage("IMG_1784.JPG");
}

void draw() {
  background(255,0,0);
  s = map(mouseX, 0, width, 1, 100);
  for (int y = 0; y < img.height; y+=s ) {
    for (int x = 0; x < img.width; x+=s) {
      int loc = x + (y * img.width);
      rectMode(CENTER);
      float bt = brightness(img.pixels[loc]);
      tile(bt, s, x, y);
    }
  }
  count ++;
  println("count: " + count);
}

void tile(float bt, float sSize, int   rectX, int rectY) {
  int iter = int(map(bt,0, 255, 10, 0));
  if (iter > 0) {
    float interval = sSize/ (iter*2);
    for (int i = 0; i < iter; i ++) {
      float rectSize = sSize- interval*i*2;
      noFill();
      stroke(0);
      strokeWeight(0);
      rect(  rectX, rectY, rectSize, rectSize);
    }
  }
}
