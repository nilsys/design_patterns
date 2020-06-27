import 'builder.dart';

class Pizza {
  PizzaBuilder pizzaBuilder;

  Pizza(this.pizzaBuilder);

  List<String> getToppings() => pizzaBuilder.toppings;

  String getSize() {
    String pizzaSize = pizzaBuilder.pizzaSize.toString();
    return pizzaSize.replaceAll("PizzaSize.", "");
  }
}
