import 'builder.dart';

enum PizzaSize { small, medium, large }

class Pizza {
  PizzaBuilder pizzaBuilder;

  Pizza(this.pizzaBuilder);

  List<String> getToppings() => pizzaBuilder.toppings;
}
