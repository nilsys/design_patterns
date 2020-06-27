import 'federal_gate_state.dart';

class FederalGate {
  String sectorName;
  List<String> acceptedSecurityCodes;

  FederalGateState _state = ClosedState();

  FederalGate(this.sectorName);

  FederalGateState get state => _state;
  void setState(FederalGateState newState) => _state = newState;

  void insertSecurityCard(String securityCode) {
    print("processing security card ...");
    if (acceptedSecurityCodes.contains(securityCode)) {
      _state.handleAcceptedSecurityCode(this);
    } else {
      _state.handleRejectedSecurityCode(this);
    }
  }

  void enter() => _state.handleEnter(this);
}
