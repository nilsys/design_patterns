import 'federal_gate.dart';

void main() {
  FederalGate federalGate = FederalGate("Sector49");
  federalGate.acceptedSecurityCodes = ["HEDA7"];

  // note that if you provided any other security code, you will be rejected!
  String securityCode = "HEDA7";
  federalGate.insertSecurityCard(securityCode);
  federalGate.enter();
}
