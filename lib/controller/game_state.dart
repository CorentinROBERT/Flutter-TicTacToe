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
  bool? case00;
  bool? case01;
  bool? case02;
  bool? case10;
  bool? case11;
  bool? case12;
  bool? case20;
  bool? case21;
  bool? case22;

  GameState({
    required this.numberMovePlay,
    required this.currentPlayer,
    required this.state,
    required this.player1,
    required this.player2,
    this.lastWinner,
    this.case00,
    this.case01,
    this.case02,
    this.case10,
    this.case11,
    this.case12,
    this.case20,
    this.case21,
    this.case22,
  });

  @override
  List<Object?> get props => [
        numberMovePlay,
        currentPlayer,
        state,
        lastWinner,
        player1,
        player2,
        case00,
        case01,
        case02,
        case10,
        case11,
        case12,
        case20,
        case21,
        case22,
      ];

  GameState copyWith({
    int? numberMovePlay,
    Player? currentPlayer,
    GameStateStatus? state,
    Player? lastWinner,
    Player? player1,
    Player? player2,
    bool? case00,
    bool? case01,
    bool? case02,
    bool? case10,
    bool? case11,
    bool? case12,
    bool? case20,
    bool? case21,
    bool? case22,
  }) {
    return GameState(
      numberMovePlay: numberMovePlay ?? this.numberMovePlay,
      currentPlayer: currentPlayer ?? this.currentPlayer,
      state: state ?? this.state,
      lastWinner: lastWinner ?? this.lastWinner,
      player1: player1 ?? this.player1,
      player2: player2 ?? this.player2,
      case00: case00 ?? this.case00,
      case01: case01 ?? this.case01,
      case02: case02 ?? this.case02,
      case10: case10 ?? this.case10,
      case11: case11 ?? this.case11,
      case12: case12 ?? this.case12,
      case20: case20 ?? this.case20,
      case21: case21 ?? this.case21,
      case22: case22 ?? this.case22,
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
      'case00': case00,
      'case01': case01,
      'case02': case02,
      'case10': case10,
      'case11': case11,
      'case12': case12,
      'case20': case20,
      'case21': case21,
      'case22': case22,
    };
  }

  static GameState fromJson(Map<String, dynamic> json) {
    final player1 = Player.fromJson(json['player1']);
    final player2 = Player.fromJson(json['player2']);
    final currentPlayer =
        json['currentPlayer'] == player1.name ? player1 : player2;
    final case00 = json['case00'];
    final case01 = json['case01'];
    final case02 = json['case02'];
    final case10 = json['case10'];
    final case11 = json['case11'];
    final case12 = json['case12'];
    final case20 = json['case20'];
    final case21 = json['case21'];
    final case22 = json['case22'];

    return GameState(
      numberMovePlay: json['numberMovePlay'] as int,
      currentPlayer: currentPlayer,
      state: GameStateStatus.values
          .firstWhere((e) => e.toString() == json['state']),
      lastWinner: json['lastWinner'] == null
          ? null
          : (json['lastWinner'] == player1.name ? player1 : player2),
      player1: player1,
      player2: player2,
      case00: case00,
      case01: case01,
      case02: case02,
      case10: case10,
      case11: case11,
      case12: case12,
      case20: case20,
      case21: case21,
      case22: case22,
    );
  }
}
