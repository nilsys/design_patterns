import 'shopping_cart.dart';
import 'payment_methods.dart';

void main() {
  bool userHasPayPallAccount = true;
  PayPall payPall = PayPall();
  CreditCard creditCard = CreditCard();
  // note that you can change the payment algorithm used so easily
  // and even add new payment methods without increasing complexity
  ShoppingCart shoppingCart = ShoppingCart(
    items: [],
    totalPrice: 299.99,
    paymentMethod: userHasPayPallAccount ? payPall : creditCard,
  );
  shoppingCart.processPayment();
}
