Demo demo;

void setup() {
  size(1300, 800, P3D);
  demo = new Demo();
}

void draw() {
  camera(mouseX, mouseY, (height/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);

  background(0);
  stroke(54, 186, 1);
  noFill();
  lights();

  demo.run();
}
