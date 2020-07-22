abstract class Food {
  void printFood() => print(this.runtimeType);
}

class FrenchFries extends Food {}

class Spaghetti extends Food {}

class Chicken extends Food {}

class HotWings extends Food {}
