import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mobile_app_interview/controller/gameController.dart';
import 'package:mobile_app_interview/view/gridGame.dart';
import 'package:mobile_app_interview/view/playerHeader.dart';
import 'package:mobile_app_interview/view/playerGameInfo.dart';

class GameView extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => GameViewState();
}

class GameViewState extends State<GameView>{

  GameController controller = GameController();
   GlobalKey<GridGameState> gridGameKey = GlobalKey();

  @override
  void initState() {
    controller.initGame();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //title 
      //TODO
      //need to create style for title
      //need to use translate for title
      //need to create widget for title
      appBar: AppBar(title: Text(
        AppLocalizations.of(context)!.tictactoe,
        //"Tic Tac Toe",
        style: TextStyle(color: Colors.white)
        ,),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(children: [
        //player header.
        PlayerHeader(controller: controller,),
        //grid
        GridGame(key: gridGameKey, controller: controller),
        //player gamer info
        PlayerGameInfo(controller : controller),
        //new game button
        //TODO make a components button to reuse with reset history
        ElevatedButton(onPressed: ()=>{
          newGame()
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5)
          )
        ), 
        child: Text(AppLocalizations.of(context)!.new_game),),
        //reset history
        ElevatedButton(onPressed: ()=>{
          resetHistory()
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
        ), 
        child: Text(AppLocalizations.of(context)!.reset_history),)
      ],
      ),
    );
  }
  
  newGame() {
    setState(() {
      controller.newGame();
      gridGameKey.currentState?.reset();
    });
  }
  
  resetHistory() {
    setState(() {
      controller.resetHistory();
    });
  }
}