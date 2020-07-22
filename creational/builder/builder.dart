// Copyright 2020 Ammar Yasser. All rights reserved.
// Use of this source code is governed by a BSD 2-Clause "Simplified" license
// that can be found in the LICENSE file.

library design_patterns;

// Builder is a creational design pattern that lets you separate the
// construction of a complex object from its representation.
// By doing so the same construction process can create different representations.

import 'pizza.dart';

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
