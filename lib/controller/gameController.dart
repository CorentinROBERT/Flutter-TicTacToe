import 'package:flutter/material.dart';
import 'package:mobile_app_interview/model/player.dart';

class GameController {
  int numberMovePlay = 0;
  late ValueNotifier<Player> currentPlayer;
  // TODO improve state to enum
  String state="play";
  Player? lastWinner;

  Player player1 = Player(icon: const Icon(Icons.clear, color: Colors.purple, size: 50,), name: "Player1", score: 0, isPlayer1: true);
  Player player2 = Player(icon: const Icon(Icons.panorama_fish_eye, color: Colors.green, size: 50,), name: "Player2", score: 0);

  GameController() {
    currentPlayer = ValueNotifier<Player>(player1);
  }

  void initGame() {
    currentPlayer.value = player1;
  }

  void newGame() {
    numberMovePlay = 0;
    state = "play";
    initGame();
  }

  void resetHistory() {
    player1.score = 0;
    player2.score = 0;
  }

  void switchCurrentPlayer() {
    currentPlayer.value = currentPlayer.value == player1 ? player2 : player1;
    numberMovePlay += 1;
    print("numberMovePlay $numberMovePlay");
  }
}
