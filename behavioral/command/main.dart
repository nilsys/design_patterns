library design_patterns;

import 'invokers.dart';
import 'receivers.dart';

/// Command design pattern

void main() {
  // instantiate a new light producer which is a Reciver.
  Light lamp = Light();
  // instantiate a new light switch which is an Invoker.
  LightSwitch lightSwitch = LightSwitch(lamp);
  // turn on light
  lightSwitch.perform("on");
  // turn off light
  lightSwitch.perform("off");
  // undo last command
  lightSwitch.undoLastCommand();
  // reset light switch (turn it off)
  lightSwitch.reset();
  // print commands history
  lightSwitch.printLog();
}
