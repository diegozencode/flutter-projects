// shapes
// Throws an exception
// single quote scape

import 'dart:math';

Shape shapeFactory(String type) {
  if (type == 'circle') return Circle(2);
  if (type == 'square') return Square(2);
  throw 'Can\'t create $type.';
}

abstract class Shape {
  num get area;
}

class Circle implements Shape {
  final num radius;
  Circle(this.radius);
  num get area => pi * pow(radius, 2);
}

class Square implements Shape {
  final num side;
  Square(this.side);
  num get area => pow(side, 2);
}

class CircleMock implements Circle {
  num area = 2;
  num radius = 1;
}

void main() {
  try {
    final circle = shapeFactory('circle');
    final square = shapeFactory('square');
    final triangle = shapeFactory('triangle');

    print(circle.area);
    print(square.area);
    print(triangle.area);
  } catch (e) {
    print(e);
  }
}
