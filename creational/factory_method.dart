library design_patterns;

/// Factory Method design pattern

abstract class Shape {
  factory Shape(String type) {
    if (type == "A") return Circle();
    return Rectangle();
  }
}

class Circle implements Shape {}

class Rectangle implements Shape {}

void main() {
  Shape shape = Shape("A");
  // print Shape object type.
  print(shape.runtimeType);
  // note that if you changed Shape argument value,
  // the type will change.
}
