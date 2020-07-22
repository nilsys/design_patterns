// Copyright 2020 Ammar Yasser. All rights reserved.
// Use of this source code is governed by a BSD 2-Clause "Simplified" license
// that can be found in the LICENSE file.

library design_patterns;

import 'receivers.dart';

// Command is a behavioral design pattern that turns a request into a stand-alone object
// that contains all information about the request. This transformation lets you
// parameterize methods with different requests, delay or queue a request’s execution
// and support undoable operations.

abstract class Command {
  String name;
  Receiver receiver;

  Command(this.receiver);

  @override
  String toString() => this.name;

  void execute();
}

class TurnOnCommand extends Command {
  @override
  String name = "Turn on";

  TurnOnCommand(Receiver receiver) : super(receiver);

  @override
  void execute() => (receiver as dynamic).turnOn();
}

class TurnOffCommand extends Command {
  @override
  String name = "Turn off";

  TurnOffCommand(Light light) : super(light);
  void execute() => (receiver as dynamic).turnOff();
}
