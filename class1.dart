import "dart:math";

const double xOrigin = 0;
const double yOrigin = 0;

void main(List<String> args) {
  print("ola");

  var point = new Point(3.3, 4.5);
  var point1 = new Point(1.3, 2.5);

  print(point.distanceTo(point1));
}

class Point {
  final double x, y;

  Point(this.x, this.y);

  Point.origin()
      : x = xOrigin,
        y = yOrigin;

  double distanceTo(Point other) {
    var dx = this.x - other.x;
    var dy = this.y - other.y;

    return sqrt(dx * dx + dy * dy);
  }
}
