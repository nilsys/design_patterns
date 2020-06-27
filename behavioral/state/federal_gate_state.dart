library design_patterns;

import 'federal_gate.dart';

/// State design pattern

// State is a behavioral design pattern that lets an object alter its behavior
// when its internal state changes. It appears as if the object changed its class.

enum PermissionState { Granted, Restricted }

abstract class FederalGateState {
  PermissionState permissionState;

  void handleAcceptedSecurityCode(FederalGate federalGate);

  void handleRejectedSecurityCode(FederalGate federalGate);

  void handleEnter(FederalGate federalGate);
}

class OpenState implements FederalGateState {
  @override
  PermissionState permissionState = PermissionState.Granted;

  @override
  void handleAcceptedSecurityCode(FederalGate federalGate) {
    print("the gate is already open!");
    federalGate.setState(this);
  }

  @override
  void handleRejectedSecurityCode(FederalGate federalGate) {
    print("provided security code is rejected!");
    print("closing ${federalGate.sectorName} gate ..");
    federalGate.setState(ClosedState());
  }

  @override
  void handleEnter(FederalGate federalGate) {
    print("enter succeeded!");
    federalGate.setState(ClosedState());
  }
}

class ClosedState implements FederalGateState {
  @override
  PermissionState permissionState = PermissionState.Restricted;

  @override
  void handleAcceptedSecurityCode(FederalGate federalGate) {
    print("provided security code is accepted!");
    print("opening ${federalGate.sectorName} gate ..");
    federalGate.setState(OpenState());
  }

  @override
  void handleRejectedSecurityCode(FederalGate federalGate) {
    print("provided security code is rejected!");
    federalGate.setState(this);
  }

  @override
  void handleEnter(FederalGate federalGate) {
    print("enter failed!, the gate is closed");
    federalGate.setState(this);
  }
}
