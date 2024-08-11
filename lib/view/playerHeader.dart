import 'package:flutter/material.dart';
import 'package:mobile_app_interview/controller/gameController.dart';
import 'package:mobile_app_interview/model/player.dart';

class PlayerHeader extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PlayerHeaderState();

  PlayerHeader({super.key, required this.controller});

  final GameController controller;
}

class PlayerHeaderState extends State<PlayerHeader> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height/14,
      child: ValueListenableBuilder<Player>(
        valueListenable: widget.controller.currentPlayer,
        builder: (context, currentPlayer, child) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  color: currentPlayer.isPlayer1 ? Colors.grey.shade400 : Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        widget.controller.player1.icon,
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(widget.controller.player1.name),
                            Text(widget.controller.player1.score.toString()),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: !currentPlayer.isPlayer1 ? Colors.grey.shade400 : Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        widget.controller.player2.icon,
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(widget.controller.player2.name),
                            Text(widget.controller.player2.score.toString()),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
