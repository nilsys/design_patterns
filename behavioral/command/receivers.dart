abstract class Receiver {
  List<String> get actions;
}

class Light extends Receiver {
  List<String> _actions = ["on", "off"];

  void turnOn() {
    print("Light on!");
    _actions.add("on");
  }

  void turnOff() {
    print("Light off!");
    _actions.add("off");
  }

  List<String> get actions => _actions;
}
