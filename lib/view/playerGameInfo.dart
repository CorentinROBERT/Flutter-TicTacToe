import 'package:flutter/material.dart';
import 'package:mobile_app_interview/controller/gameController.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mobile_app_interview/controller/game_state.dart';
import 'package:mobile_app_interview/model/player.dart';

class PlayerGameInfo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => PlayerGameInfoState();

  PlayerGameInfo({super.key, required this.state});

  GameState state;
}

class PlayerGameInfoState extends State<PlayerGameInfo>{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
          child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
          //TODO to improve with translate 
          //TODO to improve state of game : win / equality / play 
          widget.state.state == "play" ? 
          Text(widget.state.currentPlayer.isPlayer1 
          ? "${AppLocalizations.of(context)!.player1} : ${AppLocalizations.of(context)!.your_turn}"
          :"${AppLocalizations.of(context)!.player2} : ${AppLocalizations.of(context)!.your_turn}",
          style: const TextStyle(fontWeight: FontWeight.bold))
          : widget.state.state == GameStateStatus.finished ? 
          Text("Congratulation ${widget.state.lastWinner?.name??""}, you win!",
          style: const TextStyle(color: Colors.red,fontWeight: FontWeight.bold)) 
          : 
          Text(AppLocalizations.of(context)!.no_winner_on_this_game,
          style: const TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)
          ],
          ),
          );
        }
  }
