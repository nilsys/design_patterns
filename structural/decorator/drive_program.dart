import 'beverage_decorators.dart';

void main() {
  Beverage complexCoffee = SoyDecorator(
    child: CarmelDecorator(
      child: Coffee(),
    ),
  );

  print("total price is ${complexCoffee.cost}");
}
