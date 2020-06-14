library design_patterns;

/// Abstract Factory design pattern

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

abstract class Food {
  void printFood() {
    print(this.runtimeType);
  }
}

class FrenchFries extends Food {}

class Spaghetti extends Food {}

class Chicken extends Food {}

class HotWings extends Food {}

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

void main() {
  // are you sleepy?
  bool sleepy = false;
  // if you're sleepy so we will return home,
  // otherwise you would be able to go out with me to a restaurant.
  FoodFactory foodFactory = FoodFactory(sleepy);
  // print what did we eat as appetizer dish and main Dish.
  foodFactory.eatAppetizerDish().printFood();
  foodFactory.eatMainDish().printFood();
}
