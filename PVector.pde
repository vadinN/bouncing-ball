class PVector {

  float x;
  float y;
  float z;

  PVector(float x_, float y_, float z_) {
    x = x_;
    y = y_;
    z = z_;
  }

  void add(PVector v) {
    y = y + v.y;
    x = x + v.x;
    z = z + v.z;
  }
}
