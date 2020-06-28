library design_patterns;

import 'payment_methods.dart';

/// Strategy design pattern [also known as the Policy pattern]

// Strategy is a behavioral design pattern that lets you define a family of algorithms,
// put each of them into a separate class, and make their objects interchangeable.

class ShoppingCart {
  final List items;
  final double totalPrice;
  final PaymentMethod paymentMethod;

  ShoppingCart({this.items, this.totalPrice, this.paymentMethod});

  void processPayment() {
    bool paid = paymentMethod.pay();
    print(paid);
  }
}
