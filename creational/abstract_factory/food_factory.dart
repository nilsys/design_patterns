library design_patterns;

import 'food.dart';

/// Abstract Factory design pattern

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
  Food eatAppetizerDish() {
    return FrenchFries();
  }

  @override
  Food eatMainDish() {
    return Spaghetti();
  }
}

class Restaurant implements FoodFactory {
  @override
  Food eatAppetizerDish() {
    return HotWings();
  }

  @override
  Food eatMainDish() {
    return Chicken();
  }
}
