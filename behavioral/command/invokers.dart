import 'commands.dart';
import 'receivers.dart';

class Invoker {
  List<String> commandsHistory = [];

  void execute(Command command) {
    command.execute();
    commandsHistory.add("[${DateTime.now()}] executed-> $command");
  }

  void undoLastCommand() {
    commandsHistory.removeLast();
    commandsHistory.add("[${DateTime.now()}] executed-> undo");
  }

  void reset() => print("reset successfully");

  void printLog() {
    print("===================================");
    for (String commandLog in commandsHistory) {
      print(commandLog);
    }
    print("===================================");
  }

  @override
  String toString() => this.runtimeType.toString();
}

class LightSwitch extends Invoker {
  final Light light;

  LightSwitch(this.light);

  void perform(String action) {
    if (action == "on") {
      return execute(TurnOnCommand(light));
    } else if (action == "off") {
      return execute(TurnOffCommand(light));
    }
  }

  @override
  void undoLastCommand() {
    String lastCommand = commandsHistory.last;
    if (lastCommand == "on") {
      execute(TurnOffCommand(light));
    } else {
      execute(TurnOnCommand(light));
    }
    super.undoLastCommand();
  }

  @override
  void reset() {
    execute(TurnOffCommand(light));
    super.reset();
  }
}
