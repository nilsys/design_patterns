// Copyright 2020 Ammar Yasser. All rights reserved.
// Use of this source code is governed by a BSD 2-Clause "Simplified" license
// that can be found in the LICENSE file.

library design_patterns;

import 'payment_methods.dart';

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
