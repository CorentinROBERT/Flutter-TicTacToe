import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_app_interview/controller/game_bloc.dart';
import 'package:mobile_app_interview/controller/game_event.dart';
import '../controller/game_state.dart';
import 'package:mobile_app_interview/model/player.dart';

class GridGame extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => GridGameState();

  GridGame({super.key,required this.state});

  GameState state; 
}

class GridGameState extends State<GridGame>{

  //TODO to improve with generate grid method like listbuilder
  //TODO create a cell component

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
  var size = MediaQuery.of(context).size;
  return Container(
    color: Colors.grey,
    child: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //line 1
            children: [
              GestureDetector(onTap: () {
                print("case00");
                if(widget.state.case00!=null || widget.state.state != GameStateStatus.play) return;
                setState(() {
                  widget.state.case00 = widget.state.currentPlayer.isPlayer1;
                  checkIfWin();
                  context.read<GameBloc>().add(SwitchPlayerEvent());
                });
              }, 
              child: Container(
                height: size.height/7,
                width: size.height/7,
                color: Colors.white,
                child: widget.state.case00!=null ? (widget.state.case00! ? widget.state.player1.icon : widget.state.player2.icon) : null)
              ),
              GestureDetector(onTap: () {
                print("case01");
                if(widget.state.case01!=null || widget.state.state != GameStateStatus.play) return;
                setState(() {
                  widget.state.case01 = widget.state.currentPlayer.isPlayer1;
                  checkIfWin();
                  context.read<GameBloc>().add(SwitchPlayerEvent());
                });
              }, 
              child: Container(
                height: size.height/7,
                width: size.height/7,
                color: Colors.white,
                child: widget.state.case01!=null ? (widget.state.case01! ? widget.state.player1.icon: widget.state.player2.icon) : null)
              ),
              GestureDetector(onTap: () {
                print("case02");
                if(widget.state.case02!=null || widget.state.state != GameStateStatus.play) return;
                setState(() {
                  widget.state.case02 = widget.state.currentPlayer.isPlayer1;
                  checkIfWin();
                  context.read<GameBloc>().add(SwitchPlayerEvent());
                });
              }, 
              child: Container(
                height: size.height/7,
                width: size.height/7,
                color: Colors.white,
                child: widget.state.case02!=null ? (widget.state.case02! ? widget.state.player1.icon: widget.state.player2.icon) : null)
              )
            ],
      
            
          ),
      //line 2
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
              children: [
                GestureDetector(onTap: () {
                  print("case10");
                  if(widget.state.case10!=null || widget.state.state != GameStateStatus.play) return;
                setState(() {
                  widget.state.case10 = widget.state.currentPlayer.isPlayer1;
                  checkIfWin();
                   context.read<GameBloc>().add(SwitchPlayerEvent());
                });
                }, 
                child: Container(
                  height: size.height/7,
                  width: size.height/7,
                  color: Colors.white,
                child: widget.state.case10!=null ? (widget.state.case10! ? widget.state.player1.icon: widget.state.player2.icon) : null)
                ),
                GestureDetector(onTap: () {
                  print("case11");
                  if(widget.state.case11!=null || widget.state.state != GameStateStatus.play) return;
                setState(() {
                  widget.state.case11 = widget.state.currentPlayer.isPlayer1;
                  checkIfWin();
                   context.read<GameBloc>().add(SwitchPlayerEvent());
                });
                }, 
                child: Container(
                  height: size.height/7,
                  width: size.height/7,
                  color: Colors.white,
                child: widget.state.case11!=null ? (widget.state.case11! ? widget.state.player1.icon: widget.state.player2.icon) : null)
                ),
                GestureDetector(onTap: () {
                  print("case12");
                  if(widget.state.case12!=null || widget.state.state != GameStateStatus.play) return;
                setState(() {
                  widget.state.case12 = widget.state.currentPlayer.isPlayer1;
                  checkIfWin();
                   context.read<GameBloc>().add(SwitchPlayerEvent());
                });
                }, 
                child: Container(
                  height: size.height/7,
                  width: size.height/7,
                  color: Colors.white,
                child: widget.state.case12!=null ? (widget.state.case12! ? widget.state.player1.icon: widget.state.player2.icon) : null)
                )
              ],
                
              
            ),
          ),
      //line 3
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(onTap: () {
                print("case20");
                  if(widget.state.case20!=null || widget.state.state != GameStateStatus.play) return;
                setState(() {
                  widget.state.case20 = widget.state.currentPlayer.isPlayer1;
                  checkIfWin();
                  context.read<GameBloc>().add(SwitchPlayerEvent());
                });
              }, 
              child: Container(
                height: size.height/7,
                width: size.height/7,
                color: Colors.white,
                child: widget.state.case20!=null ? (widget.state.case20! ? widget.state.player1.icon: widget.state.player2.icon) : null)
              ),
              GestureDetector(onTap: () {
                print("case21");
                  if(widget.state.case21!=null || widget.state.state != GameStateStatus.play) return;
                setState(() {
                  widget.state.case21 = widget.state.currentPlayer.isPlayer1;
                  checkIfWin();
                  context.read<GameBloc>().add(SwitchPlayerEvent());
                });
              }, 
              child: Container(
                height: size.height/7,
                width: size.height/7,
                color: Colors.white,
                child: widget.state.case21!=null ? (widget.state.case21! ? widget.state.player1.icon: widget.state.player2.icon) : null)
              ),
              GestureDetector(onTap: () {
                print("case22");
                  if(widget.state.case22!=null || widget.state.state != GameStateStatus.play) return;
                setState(() {
                  widget.state.case22 = widget.state.currentPlayer.isPlayer1;
                  checkIfWin();
                  context.read<GameBloc>().add(SwitchPlayerEvent());
                });
              }, 
              child: Container(
                height: size.height/7,
                width: size.height/7,
                color: Colors.white,
                child: widget.state.case22!=null ? (widget.state.case22! ? widget.state.player1.icon: widget.state.player2.icon) : null)
              )
            ],
      
          )
        ],
      ),
    ),
  );
  }

  checkIfWin(){
    //TODO make function to set winner to avoid copy code

    List<List<bool?>> board = [
      [widget.state.case00, widget.state.case01, widget.state.case02],
      [widget.state.case10, widget.state.case11, widget.state.case12],
      [widget.state.case20, widget.state.case21, widget.state.case22]
    ];
    // Check horizontal lines
    for (int row = 0; row < 3; row++) {
      if (board[row][0] == board[row][1] && board[row][1] == board[row][2] && board[row][0] != null) {
        print(board[row][0]);
        defineWinner(board[row][0]!);
        return;
      }
    }
    // Check vertical lines
    for (int col = 0; col < 3; col++) {
      if (board[0][col] == board[1][col] && board[1][col] == board[2][col] && board[0][col] != null) {
        print(board[0][col]);  
        defineWinner(board[0][col]!);
        return;
      }
    }
    // Check diagonal lines
    if (board[0][0] == board[1][1] && board[1][1] == board[2][2] && board[0][0] != null) {
      print(board[0][0]);  
      defineWinner(board[0][0]!);
      return;
    }
    if (board[2][0] == board[1][1] && board[1][1] == board[0][2] && board[2][0] != null) {
      print(board[2][0]);  
      defineWinner(board[2][0]!);
      return;
    }
    if(widget.state.numberMovePlay == 8 && widget.state.lastWinner == null)
    {
      widget.state.state = GameStateStatus.finished;
    }
  }

  reset()
  {
    widget.state.case00 = null;
    widget.state.case01 = null;
    widget.state.case02 = null;
    widget.state.case10 = null;
    widget.state.case11 = null;
    widget.state.case12 = null;
    widget.state.case20 = null;
    widget.state.case21 = null;
    widget.state.case22 = null;
  }
  
  void defineWinner(bool value) {
    {
      if(value)
      {
        setState(() {
          widget.state.player1.score++;
          widget.state.lastWinner = widget.state.player1;
        });
      }
      else
      {
        setState(() {
          widget.state.player2.score++;
          widget.state.lastWinner = widget.state.player2;
        });
      }
      widget.state.state = GameStateStatus.finished;
    }
  }
}