import 'package:equatable/equatable.dart';

abstract class GameEvent extends Equatable {
  const GameEvent();

  @override
  List<Object?> get props => [];
}

class InitGameEvent extends GameEvent {}

class NewGameEvent extends GameEvent {}

class ResetHistoryEvent extends GameEvent {}

class SwitchPlayerEvent extends GameEvent {}
