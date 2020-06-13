library design_patterns;

/// Singleton design pattern

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
  Singleton staticSingleton = Singleton.staticSingleton;
  Singleton staticGetterSingleton = Singleton.staticGetterSingleton;
  Singleton lazySingleton = Singleton.lazySingleton;
  Singleton factorySingleton = Singleton();

  // print hash codes for all different singleton ways.
  print(staticSingleton.hashCode);
  print(staticGetterSingleton.hashCode);
  print(lazySingleton.hashCode);
  print(factorySingleton.hashCode);

  // note that if you tried to print the hash code of two objects
  // of the same singleton method, they would be the same!
}
