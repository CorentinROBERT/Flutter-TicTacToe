import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
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
      appBar: AppBar(title: const Text(
        "Tic Tac Toe",
        style: TextStyle(color: Colors.white)
        ,),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(children: [
        //player header.
        PlayerHeader(controller: controller,),
        //grid
        GridGame(controller: controller),
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
        child: const Text("New Game"),),
        //reset history
        ElevatedButton(onPressed: ()=>{
          resetHistory()
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
        ), 
        child: const Text("Reset history"),)
      ],
      ),
    );
  }
  
  newGame() {
    controller.newGame();
  }
  
  resetHistory() {
    
  }
}