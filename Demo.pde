class Demo {
  PVector location = new PVector(width/2, height/2, 0);
  PVector velocity = new PVector(5, 6, 7);

  Box box =  new Box(500, new PVector(width/2, height/2, 0));
  Ball ball = new Ball(50);

  void run() {
    box.render();
    ball.render(location);

    location.add(velocity);

    velocity.x = bounce(location.x, velocity.x, width/2);
    velocity.y = bounce(location.y, velocity.y, height/2);
    velocity.z = bounce(location.z, velocity.z, 0);
  }

  private float bounce(float axisLocation, float axisVelocity, int middle) {
    if ((axisLocation > middle + box.halfSize - ball.size) || (axisLocation < middle - box.halfSize + ball.size)) {
      return -axisVelocity;
    }

    return axisVelocity;
  }
}
