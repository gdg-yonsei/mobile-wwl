import 'dart:math';

class Point {
  int x, y;
  Point(this.x, this.y);
}

sealed class Shape {}

class Square implements Shape {
  final double length;
  Square(this.length);
}

class Circle implements Shape {
  final double radius;
  Circle(this.radius);
}

double calculateArea(Shape shape) => switch (shape) {
      Square(length: var l) => l * l,
      Circle(radius: var r) => pi * r * r
    };

void main(List<String> args) {
  var pair = [1, 2];

  if (pair case [int x, int y]) print(Point(x, y));

  switch (pair) {
    case (int a, int b) when a > b:
      print('First element greater');
    case (int a, int b) when a == b:
      print('Same');
    case (int a, int b):
      print('Second element greater');
  }
}
