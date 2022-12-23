class Box {
  public int size;
  public int halfSize;
  PVector location;

  Box(int size_, PVector location_) {
    size = size_;
    halfSize = size_/2;
    location = location_;
  }

  void render() {
    pushMatrix();
    translate(location.x, location.y, location.z);
    box(size);
    popMatrix();
  }
}
