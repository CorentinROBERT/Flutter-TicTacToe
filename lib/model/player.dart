import 'package:flutter/material.dart';

class Player{

  Icon icon;
  String name= "";
  int score = 0;
  bool isPlayer1;

  Player({required this.icon,required this.name,this.score=0,this.isPlayer1=false});
}