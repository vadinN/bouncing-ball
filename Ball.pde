class Ball {
  public int size;

  Ball(int size_) {
    size = size_;
  }

  void render(PVector location) {
    pushMatrix();
    translate(location.x, location.y, location.z);
    sphere(size);
    popMatrix();
  }
}
