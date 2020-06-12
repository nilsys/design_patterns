library design_patterns;

class Singleton {
  /// instantiating a private constructor
  Singleton._();

  static final staticSingleton = Singleton._();

  static final _staticGetterSingleton = Singleton._();
  static get staticGetterSingleton => _staticGetterSingleton;

  static final _factorySingleton = Singleton._();
  factory Singleton() => _factorySingleton;
}

void main() {
  Singleton staticSingleton = Singleton.staticSingleton;
  Singleton staticGetterSingleton = Singleton.staticGetterSingleton;
  Singleton factorySingleton = Singleton();

  // printing hash codes for all different singleton ways
  print(staticSingleton.hashCode);
  print(staticGetterSingleton.hashCode);
  print(factorySingleton.hashCode);

  // note that if you tried print the hash code of two objects
  // of the same singleton method, they would be the same!
}
