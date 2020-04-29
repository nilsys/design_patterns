library design_patterns;

class Singleton {
  Singleton._();
  static final _instance = Singleton._();
  factory Singleton() {
    print(_instance.hashCode);
    return _instance;
  }
}

void main() {
  Singleton();
  Singleton();
}
