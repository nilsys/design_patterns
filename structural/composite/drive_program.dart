import 'composite.dart';

void main() {
  Box topLevelBox = Box("top");
  Box bottomBox = Box("bottom");

  Product product = Product("glasses", 12.5);

  topLevelBox.addChild(bottomBox);
  bottomBox.addChild(product);

  print(topLevelBox.price);
}
