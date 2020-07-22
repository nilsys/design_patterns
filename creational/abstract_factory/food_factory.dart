// Copyright 2020 Ammar Yasser. All rights reserved.
// Use of this source code is governed by a BSD 2-Clause "Simplified" license
// that can be found in the LICENSE file.

library design_patterns;

import 'food.dart';

// Abstract Factory is a creational design pattern that lets you produce families
// of related objects without specifying their concrete classes.

abstract class FoodFactory {
  Food eatMainDish();
  Food eatAppetizerDish();

  factory FoodFactory(bool sleepy) {
    if (sleepy)
      return Home();
    else
      return Restaurant();
  }
}

class Home implements FoodFactory {
  @override
  Food eatAppetizerDish() => FrenchFries();

  @override
  Food eatMainDish() => Spaghetti();
}

class Restaurant implements FoodFactory {
  @override
  Food eatAppetizerDish() => HotWings();

  @override
  Food eatMainDish() => Chicken();
}
