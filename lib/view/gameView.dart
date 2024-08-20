import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mobile_app_interview/controller/game_bloc.dart';
import 'package:mobile_app_interview/controller/game_event.dart';
import 'package:mobile_app_interview/controller/game_state.dart';
import 'package:mobile_app_interview/view/gridGame.dart';
import 'package:mobile_app_interview/view/playerHeader.dart';
import 'package:mobile_app_interview/view/playerGameInfo.dart';

class GameView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => GameViewState();
}

class GameViewState extends State<GameView> {
  GlobalKey<GridGameState> gridGameKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.tictactoe,
          style: const TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      ),
      body: BlocBuilder<GameBloc, GameState>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  //player header.
                  PlayerHeader(state: state),
                  //grid
                  GridGame(key: gridGameKey, state: state),
                  //player gamer info
                  PlayerGameInfo(state: state),
                  //new game button
                  ElevatedButton(
                    onPressed: () => {
                      context.read<GameBloc>().add(NewGameEvent()),
                      gridGameKey.currentState?.reset()
                    },
                    style:
                        Theme.of(context).elevatedButtonTheme.style?.copyWith(
                              backgroundColor:
                                  const WidgetStatePropertyAll(Colors.blue),
                            ),
                    child: Text(AppLocalizations.of(context)!.new_game),
                  ),
                  //reset history
                  ElevatedButton(
                    onPressed: () => {
                      context.read<GameBloc>().add(ResetHistoryEvent()),
                    },
                    style:
                        Theme.of(context).elevatedButtonTheme.style?.copyWith(
                              backgroundColor:
                                  const WidgetStatePropertyAll(Colors.red),
                            ),
                    child: Text(AppLocalizations.of(context)!.reset_history),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
