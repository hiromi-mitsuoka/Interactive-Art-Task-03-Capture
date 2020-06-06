import processing.video.*;
Capture cam;
int cell;

void setup() {
  cam = new Capture(this,width,height,"FaceTime HD Camera");
  size(800, 600, P3D);
  rectMode(CENTER);
  noStroke();
  cell = 10;
  cam.start();
}

void draw() {
  background(0);
  for (int j=0; j<height; j+=cell) {
    for (int i=0; i<width; i+=cell) {
      pushMatrix();
      color col= cam.get(i, j);
      float r = red(col);
      float g = green(col);
      float b = blue(col);
      fill(255-r, 255-g, 255-b);
      rect(i, j, cell-1, cell-1);
      popMatrix();
    }
  }
}

void captureEvent(Capture c) {
  cam.read();
}
