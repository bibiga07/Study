void main() {
  // 기본 생성자
  Point point = Point(1, 2);
  print(point);
  print(point.x);
  print(point.y);
}

// 클래스 기초
// 명명 생성자
class Point {
  double x;
  double y;

  Point(this.x, this.y);
}