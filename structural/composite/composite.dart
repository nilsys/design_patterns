library design_patterns;

/// Composite design pattern

// Composite is a structural design pattern that lets you compose objects into
// tree structures and then work with these structures as if they were individual objects.

abstract class Thing {
  final String name;

  Thing(this.name);

  double get price;
}

class Box extends Thing {
  final String name;
  List<Thing> children = List<Thing>();

  Box(this.name) : super(name);

  @override
  double get price {
    double totalPrice = 0;
    children.forEach((child) {
      totalPrice += child.price;
    });
    return totalPrice;
  }

  void addChild(Thing child) => children.add(child);
}

class Product extends Thing {
  final String name;
  double productPrice;

  Product(this.name, this.productPrice) : super(name);

  @override
  double get price => productPrice;
}
