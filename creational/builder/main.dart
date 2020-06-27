import 'builder.dart';
import 'pizza.dart';

void main() {
  PizzaBuilder pizzaBuilder = PizzaBuilder(PizzaSize.medium);
  pizzaBuilder.setToppings(["Pepperoni", "Extra cheese"]);

  Pizza pizza1 = Pizza(pizzaBuilder);
  print("pizza1 toppings: ${pizza1.getToppings()}");
  print("pizza1 size: ${pizza1.getSize()}");

  pizzaBuilder.changePizzaSize(PizzaSize.large);
  pizzaBuilder.setToppings(["Sausage", "Black olives"]);

  Pizza pizza2 = pizzaBuilder.build();
  print("pizza2 toppings: ${pizza2.getToppings()}");
  print("pizza2 size: ${pizza2.getSize()}");
}
