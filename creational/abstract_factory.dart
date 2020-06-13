library design_patterns;

/// Abstract Factory design pattern

abstract class Food {}

class Spaghetti implements Food {}

class Chicken implements Food {}

abstract class FoodFactory {
  void eat();
}

class Home implements FoodFactory {
  @override
  void eat() {
    print("we are eating spaghetti!");
  }
}

class CoffeeShop implements FoodFactory {
  @override
  void eat() {
    print("we are eating chicken!");
  }
}

void main() {
  // are you sleepy?
  bool sleepy = false;
  // if you're sleepy so we will return home,
  // otherwise you would be able to go out with me to a restaurant.
  String destination = sleepy ? "home" : "coffee shop";
  FoodFactory foodFactory;
  switch (destination) {
    case "home":
      // I will prepare some spaghetti for us to eat.
      foodFactory = Home();
      break;
    case "coffee shop":
      // we are waiting for the chief to make us some chicken.
      foodFactory = CoffeeShop();
      break;
    default:
      // there are no other possibilities
      throw UnsupportedError(
        "you only have two options which are home or coffee shop",
      );
  }
  foodFactory.eat();
}
