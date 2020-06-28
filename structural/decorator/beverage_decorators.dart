library design_patterns;

/// Decorator design pattern

// Decorator is a structural design pattern that lets you attach new behaviors to objects
// by placing these objects inside special wrapper objects that contain the behaviors.

abstract class Beverage {
  double get cost;
}

class Coffee implements Beverage {
  @override
  double get cost => 10;
}

abstract class AddOnDecorator extends Beverage {
  final Beverage child;

  AddOnDecorator({this.child});

  @override
  double get cost => this.cost;
}

class SoyDecorator extends AddOnDecorator {
  final Beverage child;
  SoyDecorator({this.child}) : super(child: child);

  @override
  double get cost => this.child.cost + 1.5;
}

class CarmelDecorator extends AddOnDecorator {
  final Beverage child;
  CarmelDecorator({this.child}) : super(child: child);

  @override
  double get cost => this.child.cost + 3;
}
