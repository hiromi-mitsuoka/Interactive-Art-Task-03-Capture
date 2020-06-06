import processing.video.*;
Capture cam;
int cell;

void setup() {
  cam = new Capture(this, width, height, "FaceTime HD Camera");
  size(800, 600, P3D);
  rectMode(CENTER);
  noStroke();
  cell = 4;
  cam.start();
}

void draw() {
  background(255);
  for (int j=0; j<height; j+=cell) {
    for (int i=0; i<width; i+=cell) {
      //pushMatrix();
      //color col = cam.get(i, j);
      //float s = saturation(col);
      //if (s>125) {
      //  s = 245;
      //} else {
      //  s = 10;
      //}
      //fill(s);
      //rect(i, j, cell-1, cell-1);
      //popMatrix();

      //pushMatrix();
      //color col= cam.get(i, j);
      //float r = red(col);
      //float g = green(col);
      //float b = blue(col);
      //fill(255-r, 255-g, 255-b);
      //rect(i, j, cell-1, cell-1);
      //popMatrix();

      //pushMatrix();
      //color col= cam.get(i, j);
      //float r = red(col)+50*sin(frameCount*0.05);
      //float g = green(col)+50*sin(frameCount*0.1);
      //float b = blue(col)+500*cos(frameCount*0.025);
      //fill(r, g, b);
      //rect(i, j, cell-1, cell-1);
      //popMatrix();
    }
  }
}

void captureEvent(Capture c) {
  cam.read();
}
