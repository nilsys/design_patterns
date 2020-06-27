library design_patterns;

/// Builder design pattern

// Builder s a creational design pattern that lets you separate the
// construction  of a complex object from its representation.
// By doing so the same construction process can create different representations.

import 'pizza.dart';

enum PizzaSize { small, medium, large }

class PizzaBuilder {
  PizzaSize _pizzaSize;
  List<String> _toppings;

  PizzaBuilder(this._pizzaSize);

  PizzaSize get pizzaSize => _pizzaSize;
  void changePizzaSize(PizzaSize newPizzaSize) {
    _pizzaSize = newPizzaSize;
  }

  List<String> get toppings => _toppings;
  void setToppings(List<String> newToppings) {
    _toppings = newToppings;
  }

  Pizza build() => Pizza(this);
}
