import 'player.dart';
import 'movement.dart';

void main() {
  Movement normalMovement = NormalMovement();
  Movement noMovement = NoMovement();

  // create player
  Player player = Player("Ammar");
  Movement movement = normalMovement;

  // move up player
  movement.moveUp(player);
  print("new position: ${player.position}");

  // player got frozen
  movement = noMovement;
  movement.moveDown(player);
}
