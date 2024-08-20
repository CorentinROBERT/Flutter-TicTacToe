import 'package:flutter/material.dart';
import 'package:mobile_app_interview/controller/game_state.dart';
import 'package:mobile_app_interview/model/player.dart';

class PlayerHeader extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PlayerHeaderState();

  const PlayerHeader({super.key, required this.state});

  //final GameController controller;
  final GameState state;
}

class PlayerHeaderState extends State<PlayerHeader> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      height: MediaQuery.of(context).orientation == Orientation.portrait
          ? size.height / 14
          : size.height / 6,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Container(
              color: widget.state.currentPlayer.isPlayer1
                  ? Colors.grey.shade400
                  : Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    widget.state.player1.icon,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.state.player1.name),
                        Text(widget.state.player1.score.toString()),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: !widget.state.currentPlayer.isPlayer1
                  ? Colors.grey.shade400
                  : Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    widget.state.player2.icon,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.state.player2.name),
                        Text(widget.state.player2.score.toString()),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
