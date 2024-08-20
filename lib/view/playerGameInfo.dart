import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mobile_app_interview/controller/game_state.dart';
import 'package:mobile_app_interview/model/player.dart';

class PlayerGameInfo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PlayerGameInfoState();

  PlayerGameInfo({super.key, required this.state});

  GameState state;
}

class PlayerGameInfoState extends State<PlayerGameInfo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          widget.state.state == GameStateStatus.play
              ? Text(
                  widget.state.currentPlayer.isPlayer1
                      ? "${AppLocalizations.of(context)!.player1} : ${AppLocalizations.of(context)!.your_turn}"
                      : "${AppLocalizations.of(context)!.player2} : ${AppLocalizations.of(context)!.your_turn}",
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall
                      ?.copyWith(color: Colors.black))
              : widget.state.state == GameStateStatus.finished &&
                      widget.state.lastWinner != null
                  ? Text(
                      AppLocalizations.of(context)!
                          .winner(widget.state.lastWinner?.name ?? ""),
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall
                          ?.copyWith(color: Colors.red))
                  : Text(
                      AppLocalizations.of(context)!.no_winner_on_this_game,
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall
                          ?.copyWith(color: Colors.blue),
                    )
        ],
      ),
    );
  }
}
