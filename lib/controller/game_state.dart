import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import 'package:mobile_app_interview/model/player.dart';

enum GameStateStatus { play, finished }

class GameState extends Equatable {
  final int numberMovePlay;
  final Player currentPlayer;
  GameStateStatus state;
  Player? lastWinner;
  final Player player1;
  final Player player2;

  GameState({
    required this.numberMovePlay,
    required this.currentPlayer,
    required this.state,
    required this.player1,
    required this.player2,
    this.lastWinner,
  });

  @override
  List<Object?> get props => [
        numberMovePlay,
        currentPlayer,
        state,
        lastWinner,
        player1,
        player2,
      ];

  GameState copyWith({
    int? numberMovePlay,
    Player? currentPlayer,
    GameStateStatus? state,
    Player? lastWinner,
    Player? player1,
    Player? player2,
  }) {
    return GameState(
      numberMovePlay: numberMovePlay ?? this.numberMovePlay,
      currentPlayer: currentPlayer ?? this.currentPlayer,
      state: state ?? this.state,
      lastWinner: lastWinner ?? this.lastWinner,
      player1: player1 ?? this.player1,
      player2: player2 ?? this.player2,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'numberMovePlay': numberMovePlay,
      'currentPlayer': currentPlayer.name,
      'state': state.toString(),
      'lastWinner': lastWinner?.name,
      'player1': player1.toJson(),
      'player2': player2.toJson(),
    };
  }

  static GameState fromJson(Map<String, dynamic> json) {
    final player1 = Player.fromJson(json['player1']);
    final player2 = Player.fromJson(json['player2']);
    final currentPlayer = json['currentPlayer'] == player1.name ? player1 : player2;

    return GameState(
      numberMovePlay: json['numberMovePlay'] as int,
      currentPlayer: currentPlayer,
      state: GameStateStatus.values.firstWhere((e) => e.toString() == json['state']),
      lastWinner: json['lastWinner'] == null
          ? null
          : (json['lastWinner'] == player1.name ? player1 : player2),
      player1: player1,
      player2: player2,
    );
  }
}
