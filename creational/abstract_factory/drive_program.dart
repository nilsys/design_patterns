import 'food_factory.dart';

void main() {
  // are you sleepy?!
  bool sleepy = false;
  // if you're sleepy so we will return home,
  // otherwise you would be able to go out with me to a restaurant.
  FoodFactory foodFactory = FoodFactory(sleepy);
  // print what did we eat as appetizer dish and main Dish.
  foodFactory.eatAppetizerDish().printFood();
  foodFactory.eatMainDish().printFood();
}
