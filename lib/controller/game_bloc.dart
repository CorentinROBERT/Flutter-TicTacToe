import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mobile_app_interview/controller/game_event.dart';
import 'package:mobile_app_interview/controller/game_state.dart';
import 'package:mobile_app_interview/model/player.dart';

class GameBloc extends HydratedBloc<GameEvent, GameState> {
  GameBloc()
      : super(GameState(
          numberMovePlay: 0,
          currentPlayer: Player(
              icon: const Icon(Icons.clear, color: Colors.purple, size: 50),
              name: "Player1",
              score: 0,
              isPlayer1: true),
          state: GameStateStatus.play,
          player1: Player(
              icon: const Icon(Icons.clear, color: Colors.purple, size: 50),
              name: "Player1",
              score: 0,
              isPlayer1: true),
          player2: Player(
              icon: const Icon(Icons.panorama_fish_eye, color: Colors.green, size: 50),
              name: "Player2",
              score: 0),
        )) {
    on<InitGameEvent>(_onInitGame);
    on<NewGameEvent>(_onNewGame);
    on<ResetHistoryEvent>(_onResetHistory);
    on<SwitchPlayerEvent>(_onSwitchPlayer);
  }

  void _onInitGame(InitGameEvent event, Emitter<GameState> emit) {
    emit(state.copyWith(currentPlayer: state.player1));
  }

  void _onNewGame(NewGameEvent event, Emitter<GameState> emit) {
    emit(state.copyWith(
      numberMovePlay: 0,
      state: GameStateStatus.play,
      currentPlayer: state.player1,
    ));
  }

  void _onResetHistory(ResetHistoryEvent event, Emitter<GameState> emit) {
    emit(state.copyWith(
      player1: state.player1.copyWith(score: 0),
      player2: state.player2.copyWith(score: 0),
    ));
  }

  void _onSwitchPlayer(SwitchPlayerEvent event, Emitter<GameState> emit) {
    final newPlayer = state.currentPlayer == state.player1 ? state.player2 : state.player1;
    emit(state.copyWith(
      currentPlayer: newPlayer,
      numberMovePlay: state.numberMovePlay + 1,
    ));
  }

  @override
  GameState? fromJson(Map<String, dynamic> json) {
    return GameState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(GameState state) {
    return state.toJson();
  }
}
