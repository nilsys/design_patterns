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
