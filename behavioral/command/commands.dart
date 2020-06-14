import 'receivers.dart';

abstract class Command {
  String name;
  Receiver receiver;

  Command(this.receiver);

  @override
  String toString() => this.name;

  void execute();
}

class TurnOnCommand extends Command {
  String name = "Turn on";
  TurnOnCommand(Receiver receiver) : super(receiver);

  @override
  void execute() => (receiver as dynamic).turnOn();
}

class TurnOffCommand extends Command {
  String name = "Turn off";
  TurnOffCommand(Light light) : super(light);
  void execute() => (receiver as dynamic).turnOff();
}
