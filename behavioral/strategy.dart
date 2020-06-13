library design_patterns;

// Strategy design pattern [Composition over Inheritance]

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

abstract class PaymentMethod {
  bool pay();
}

class CreditCard implements PaymentMethod {
  @override
  bool pay() {
    print('paying with credit card');
    return true;
  }
}

class PayPall implements PaymentMethod {
  @override
  bool pay() {
    print('paying with pay pall');
    return true;
  }
}

void main() {
  PayPall payPall = PayPall();
  CreditCard creditCard = CreditCard();
  // note that you can change the payment algorithm used so easily
  // and even add new payment methods without increasing complexity
  ShoppingCart shoppingCart = ShoppingCart(
    items: [],
    totalPrice: 299.99,
    paymentMethod: payPall,
  );
  shoppingCart.processPayment();
}
