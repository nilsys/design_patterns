// Copyright 2020 Ammar Yasser. All rights reserved.
// Use of this source code is governed by a BSD 2-Clause "Simplified" license
// that can be found in the LICENSE file.

library design_patterns;

// Singleton is a creational design pattern that lets you ensure that
// a class has only one instance, while providing a global access point to this instance.

class Singleton {
  Singleton._();

  static final staticSingleton = Singleton._();

  static final _staticGetterSingleton = Singleton._();
  static get staticGetterSingleton => _staticGetterSingleton;

  static Singleton _lazySingleton;
  static get lazySingleton {
    if (_lazySingleton != null) {
      return _lazySingleton;
    } else {
      _lazySingleton = Singleton._();
      return _lazySingleton;
    }
  }

  static final _factorySingleton = Singleton._();
  factory Singleton() => _factorySingleton;
}

void main() {
  // four different types of singleton
  Singleton staticSingleton = Singleton.staticSingleton;
  Singleton staticGetterSingleton = Singleton.staticGetterSingleton;
  Singleton lazySingleton = Singleton.lazySingleton;
  Singleton factorySingleton = Singleton();

  // print hash codes for all different singleton types.
  print(staticSingleton.hashCode);
  print(staticGetterSingleton.hashCode);
  print(lazySingleton.hashCode);
  print(factorySingleton.hashCode);

  // note that if you tried to print the hash code of two objects
  // of the same singleton type, they would be the same!
}
