library design_patterns;

import 'player.dart';

/// Null Object design pattern

// Null Object is a design pattern used to encapsulate the absence of an object by providing
// a substitutable alternative that offers suitable default do nothing behavior.
// In short, a design where "nothing will come of nothing"

abstract class Movement {
  void moveUp(Player player);
  void moveDown(Player player);
}

class NormalMovement extends Movement {
  @override
  void moveUp(Player player) {
    if (player.position <= 100) {
      player.position += 20;
    } else {
      print("Player is at the top!");
    }
  }

  @override
  void moveDown(Player player) {
    if (player.position > 30) {
      player.position -= 30;
    } else {
      print("Player is at the bottom!");
    }
  }
}

class NoMovement implements Movement {
  @override
  void moveDown(_) => print("player is frozen and can't move!");

  @override
  void moveUp(_) => print("player is frozen and can't move!");
}
